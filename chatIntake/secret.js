const fs = require('fs');
const { access_token, last_date } = require('./secret.json');
console.log([access_token, last_date]);
let password = `oauth:${access_token}`;
//pull password from file
//store secret expiry time/date
let expiryDate = new Date(last_date);


let findDate = ((numOfSeconds)=> {
    date = new Date();
    date.setSeconds(date.getSeconds() + numOfSeconds);
  
    return date;
});

let refresh_token,client_id,client_secret;
let  {
    SecretsManagerClient,
    GetSecretValueCommand,
  } = require("@aws-sdk/client-secrets-manager");
  
  

const apiCall = async ()=>{
    /*data format
    {
        "access_token": "",
        "expires_in": 15549,
        "refresh_token": "",
        "scope": [
            "chat:edit",
            "chat:read"
        ],
        "token_type": "bearer"
    }
    */
    
    if(expiryDate && (expiryDate - Date.now())>0){
        return password;
    }
    //get secret refresh token from aws secrets manager
    try {
        const secret_name = "ybotman_twitch";
  
        const client = new SecretsManagerClient({
          region: "us-east-1",
        });
        let response = await client.send(
            new GetSecretValueCommand({
            SecretId: secret_name,
            VersionStage: "AWSCURRENT", // VersionStage defaults to AWSCURRENT if unspecified
            })
        );
        let secrets = response.SecretString;
        refresh_token = secrets.refresh_token;
        client_id = secrets.client_id;
        client_secret = secrets.client_secret;
        await fetch(`https://id.twitch.tv/oauth2/token?client_id=${clientId}&client_secret=${clientSecret}&grant_type=refresh_token&refresh_token=${refreshToken}`,
            {method: 'POST'}
            ).then((response)=>{
                return response.json();
            }).then((data) => {
                console.log(data);
                password = `oauth:${data.access_token}`;
                expiryDate = findDate(data.expires_in);
                //write new info to file
                const jsonString = JSON.stringify({
                    access_token: data.access_token,
                    last_date: expiryDate.toJSON(),
                });
                fs.writeFile('./secret.json', jsonString, err => {
                    if (err) {
                        console.log('Error writing file', err)
                    } else {
                        console.log('Successfully wrote file')
                    }
                });
            });
    } catch (error) {
      // For a list of exceptions thrown, see
      // https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_GetSecretValue.html
      console.error(error);
    }
    return password;
}
if(expiryDate < Date.now()){//make api call if expired
    console.log("current date is newer than: ", expiryDate);
    apiCall();
}
module.exports = password;