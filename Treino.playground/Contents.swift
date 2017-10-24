


var asterisco: String = "*"
var empty = "  "
var u = Int()
for i in 0...10 {
    
    if i % 2 != 0 {
    asterisco += "**"
    } else if u < 8 {
        for j in u...4 {
            empty += " "
            }
        print("\(empty)\(asterisco)")

      }
    u += 1
        empty = ""
    }


