# Coding_Inferno-Programatic_UI-Demo
Simple App for demonstrating - How to remove Storyboard and instead use your programmatic views instead.

You begin with adding changes to Scene Delegate and then make changes to the P-List

# Here are the steps I followed in this project.

1. Add following code to the Scene Delegate
'''
guard let windowScene       = (scene as? UIWindowScene) else { return }
        
        window                      = UIWindow(windowScene: windowScene)
        window?.windowScene         = windowScene
        window?.rootViewController  = IntroViewController()
        window?.makeKeyAndVisible()

2. Make new View Controller
this is where you want the landing page to be. Here I have just changed a simple lable and set the background color.

3. Modify P-List
This is a three part process
a. Locate the Project Navigator > General > Deployment Info > Main Interface - Delete the "Main", to blank.
b. In Project Navigator, delete the Storyboard file
c. Locate the "info.plist" file and open it. Use command+f to open find tool. search "main". Delete the entry using (-) button.
