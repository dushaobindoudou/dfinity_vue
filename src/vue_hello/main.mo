import Time "mo:base/Time";
import In "mo:base/Int";

actor {
    public func greet(name : Text) : async Text {
        return "Hello, " # name # "!";
    };
    public func greetNow(name1 : Text) : async Text {
        let now1 : Int = Time.now();
        let nowStr: Text = In.toText(now1);
        return "Hello, " # name1 # " " # nowStr # " !";
    };
};
