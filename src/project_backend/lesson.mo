import HashMap "mo:base/HashMap";
import Text "mo:base/Text";
actor Project{
  //Simple authentication system
  //Sign up
  //Sign in

  //HashMap
  var users = HashMap.HashMap<Text, Text>(10, Text.equal, Text.hash);

  func simpleHash(password : Text): Text{
    return Text.concat(password, "_hashed");
  };

public func signUp(username : Text, password :Text): async Text{
  let storedPassword = users.get(username);
  if (users.get(username)!= null){
    return "Account already exists";
    }else{
      users.put(username , simpleHash(password));
      return "Sign Up Successful"
    }
  
};

public func signIn(username : Text, password :Text): async Text{
   if (users.get(username)== null){
    return "Account doesn't exist";
    }else{
      if (users.get(username)== simpleHash(password)){
        return "SignIn successfully";
      }
      else{
        return "password incorrect";
      };
      
};


 

  };

};
