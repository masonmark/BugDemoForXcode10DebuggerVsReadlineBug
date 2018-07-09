//
//  main.swift
//  BugDemoForXcode10DebuggerVsReadlineBug
//
//  Created by mason on 2018-07-09.
//  Copyright © 2018 MASON MARK (.COM). All rights reserved.
//

import Foundation

print("""
Hello, this program exists to demonstrate a bug in
Xcode 10.0b3's debugger pane, when doing textual I/O
while developing in Xcode. Therefore, it is intended
to be run inside Xcode 10 (although it could be run
in a terminal or inside Xcode 9 to demonstrate the
expected behavior).

""")

print("""
Please type your name manually, and press Return.
I will then read your name back using readLine().

""")

guard let name = readLine() else { fatalError("☠️  死ぬ") }

print("""
    
The readLine() function claims your name is: \(name)
    
""")

print("""
Next, please paste a word in, and press Return.
Any word is fine; for instance, you could just
copy this: FRAGNOBSTICATE

""")

guard let text = readLine() else { fatalError("☠️  死ぬ") }

print("""
    
The readLine() function claims you pasted: '\(text)'

""")

if (text == "") {
    print("""
            Assuming you pasted a real word in, as instructed, then you
            have successfully reproduced the bug in the Xcode 10 beta,
            which is the sole purpose of this program.

            Unlike the Xcode 9 debugger I/O pane, and unlike a real
            terminal, the Xcode 10 debugger pane doesn't treat pasted
            text like real input. This is a bug in Xcode, that makes
            it harder to debug commmand-line programs.

            Hopefully, this will be fixed soon.

            Thank you for playing!

          """)
} else {
    print("""
            I don't see any problem! 🎉
            
            If you are running this inside Xcode 10, then this bug has
            probably been fixed.

          """)
}

print("The program will end now. Goodbye!")
