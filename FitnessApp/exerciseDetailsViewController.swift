//
//  exerciseDetailsViewController.swift
//  FitnessApp
//
//  Created by Nikhil Prajith Kumar on 5/14/21.
//

import UIKit

class exerciseDetailsViewController: UIViewController {

    var exerciseNameForDetails = ""
    var exercisePictureLabelForDetails = ""
    
    var exerciseDesciptionLabelForDetails = ""
    
    var descriptionExercise = [" Biceps: Dumbell Curl": "Stand holding a dumbbell in each hand with your arms hanging by your sides. Ensure your elbows are close to your torso and your palms facing forward. Keeping your upper arms stationary, exhale as you curl the weights up to shoulder level while contracting your biceps. Aim for 4 Sets with 8-12 reps.",
                               "Biceps: Hammer Curl" : "Stand holding a pair of dumbbells at arms length by your sides with your palms facing each other. Keeping your elbows tucked, your upper arms locked in place (only your hands and forearms should move), and your palms facing inward, curl the dumbbells as close to your shoulders as you can. Pause, and then slowly lower the weights back to the starting position. Aim for 4 Sets with 8-12 reps.",
                               "Biceps: Rope Curl": "Place a rope attachment onto a low pulley and stand facing the machine. Grasp the rope with a palms-in grip. Keep the natural arch of your back and torso stationary. Pull your elbows in to your side and keep them in position. Use your biceps to pull your arms up until your biceps touch your forearms. Slowly bring your weight back to the original position. Aim for 4 Sets with 8-12 reps.",
                                "Triceps: Pull Downs": "Set the cable machine up with the bar at head height. Grab the bar, stand straight with elbows tucked in to your sides. Stand with your feet hip-width apart, or place one in front of the other. Pull the cable down until the bar touches your thighs and pause to squeeze your triceps at the bottom of the move. Slowly raise the bar back to the starting position. Aim for 4 Sets with 8-12 reps.",
                                "Triceps: Dips": "Grip the front edges of a chair or bench with your hand. Hover your butt just off and in front of the seat, feet flat, and legs bent so thighs are parallel to the floor. Straighten your arms. This is your start position. Lower your body toward the floor until your arms form 90-degree angles. Engage your triceps to press back to start. Aim for 4 Sets with 8-12 reps.",
                                "Barbell Bench Press": "Lie flat on your back on a bench. Grip the bar with hands just wider than shoulder-width apart, so when you’re at the bottom of your move your hands are directly above your elbows. Bring the bar slowly down to your chest as you breathe in. Push up as you breathe out. Aim for 4 Sets with 8-12 reps.",
                                "Push Ups": "Begin in prone position with your arms slightly wider than shoulder width. Arms should be directly under the shoulder. Push with palms and keep body in neutral position with even balance throughout both hands and toes. Contact the chest muscles and straighten the arms. Slowly lower your body by bending elbows and keeping neutral alignment until your chest is almost at the floor.",
                                "Cable Cross Over": "Set the handles of the pulleys to highest level. Stand in center with feet shoulder-width apart. Bend your torso forwards slightly, keep back straight, bend elbows slightly as well, with wrists facing the floor. Keeping your core engaged, pull both handles down and across your body. Squeeze chest muscles in this fully contracted position. Slowly reverse to the start position, keep the bend in your elbows throughout. Aim for 4 Sets with 8-12 reps.",
                                "Incline Chest Press": "Lie on the incline bench with your butt about 6 inches above the seat. Grab the barbell with a grip slightly wider than shoulder width and hold onto it as tightly as you can. Unrack the bar and bring it directly over your shoulders with your arms straight. Lower the bar with control to the upper part of your chest. Your elbows should be at about a 45-degree angle with your body. Aim for 4 Sets with 8-12 reps.",
                                "Pec Deck": "Bend your arms at a 90° angle and keep your elbows at chest level. Gripping the pec deck handles, pull your arms toward your body while contracting your pectoral muscles. Bring the handles or arm pads in front of your chest, hold the position for a couple of seconds, and then slowly release back to starting position. Aim for 4 Sets with 8-12 reps.",
                                "Shoulder Press": "Sit upright and keep the back straight. Hold a dumbbell in each hand at the shoulders with an overhand grip. Thumbs should be on the inside and knuckles facing up. Raise the weights above the head in a controlled motion while exhaling. Pause at the top of the motion. Return the dumbbells to the shoulders while inhaling. Aim for 4 Sets with 8-12 reps.",
                                "Side Lateral Raise": "Grab dumbbells and stand with them by your sides, with your palms facing your body.Stand tall with your core switched on and shoulder blades pulled back and down. Keep back straight, and upper body still lift the dumbbells out to your side with a slight bend at your elbows, keeping the weights higher than your forearms. Lift until your arms are parallel to the floor then slowly lower to the start position. Aim for 4 Sets with 8-12 reps.",
                                "Arnold Press": "Start standing with your feet hip-width apart, holding a pair of dumbbells at shoulder height, with elbows bent and palms facing body.In one motion, bring elbows out wide to sides while rotating hands so palms face forward and pressing the dumbbells overhead until arms are straight and biceps are by ears.Pause, then reverse the movement to return to start. That's one rep. Aim for 4 Sets with 8-12 reps.",
                                "Rear Delt Flies": "Stand with feet shoulder-width apart holding dumbbells at your sides.Press the hips back in a hinge motion bringing your chest forward almost parallel to the floor.Allow the weights to hang straight down, palms facing each other.Maintain a tight core, straight back, and slight knee bend.Exhale and raise both arms out to your side, squeezing the shoulder blades together.Keep a soft bend in your elbows as you pull your shoulder blades toward the spine.Inhale as you lower the weight back to start position.Avoid hunching your shoulders up during the movement.Keep your chin tucked to maintain a neutral spine during the exercise.Focus on feeling the shoulders blades coming together with proper breathing from start to finish. Aim for 4 Sets with 8-12 reps.",
                                "Front Raises": "Grabbing a pair of dumbbells, and get in the starting position by standing with your feet shoulder-width apart and a slight bend in your knees. Hold the dumbbells in front of your body with your palms facing your legs. Initiate the upward movement by slowly lifting your arms away from your body. Aim for 4 Sets with 8-12 reps.",
                                "Deadlift": "Stand with your mid-foot under the barbell. Bend over and grab the bar with a shoulder-width grip. Bend your knees until your shins touch the bar. Lift your chest up and straighten your lower back. Take a big breath, hold it, and stand up with the weight. Aim for 4 Sets with 8-12 reps.",
                                "Lat Pull Downs": "Sit on the lat pulldown machine and adjust the knee pad so that there is no free space and you’re tightly seated. Place your feet flat on the floor, push your chest upwards and out. Retract your scapula, which should create an arch leaning away from the machine. Take hold of the bar, with your hands in a wide grip. When you’re in your starting position inhale and make sure your keep posture without letting your scapula loosen or your shoulders raise. Exhale when you begin the movement (concentric contraction); Pull through your elbows until you’re able to squeeze your lats at the bottom of the movement and your shoulder blades are together. Slowly raise the bar back up until your arms are extended and back in the starting position. Aim for 4 Sets with 8-12 reps. ",
                                "Wide Grip Pull Ups": "Reach up and grab the bar with each hand. Your thumbs should be pointing toward each other, and your grip should be wider than your body. When positioned correctly, your arms and torso should form a ‘Y.’ To be more specific, each arm should be 30 to 45 degrees from your body, but no more than a 45-degree angle. Look straight ahead and pull your body upwards towards the bar. Pause, then lower yourself back down to the original position. Aim for 4 Sets with 8-12 reps.",
                                "Barbell Rows": "Stand with your mid-foot under the bar (medium stance). Bend over and grab the bar (palms down, medium-grip). Unlock your knees while keeping your hips high. Lift your chest and straighten your back. Pull the bar against your lower chest. Aim for 4 Sets with 8-12 reps.",
                                "Seated Rows": "Sit upright on the bench and plant your feet on the floor or foot pads, knees bent. Extend your arms and hold the handle or cable. Move your shoulders back and down. Brace your core. Exhale. Bend your elbows to pull the handle or cable, keeping your elbows tucked in and your back neutral. Pause for 1 second. Inhale and slowly extend your arms, counting to 3. Aim for 4 Sets with 8-12 reps.",
                                "Squats":"Stand with the bar on your upper-back, and your feet shoulder-width apart. Squat down by pushing your knees to the side while moving hips back. Break parallel by Squatting down until your hips are lower than your knees. Squat back up while keeping your knees out and chest up. Stand with your hips and knees locked at the top. Aim for 4 Sets with 8-12 reps.",
                                "Lunges":"Stand in a split stance with the right foot forward and the left leg back The feet should be about 2 to 3 feet apart, depending on your leg length. The split stance will require balance, so hold onto a wall or chair if you feel wobbly Before you lunge, make sure your torso is straight and that you’re up on the back toe. Bend the knees and lower the body down until the back knee is a few inches from the floor. At the bottom of the movement, the front thigh should be parallel to the floor and the back knee should point toward the floor. The weight should be evenly distributed between both legs. Push back up, keeping the weight in the heel of the front foot. Aim for 4 Sets with 8-12 reps.",
                                "Leg Press":"Choose the appropriate weight and set the seat so that the knees are bent just over right angles. Position feet about shoulder width apart. Try to push through your heels, keeping the knees lined up over the toes. Extend the legs until nearly straight, avoiding locking the knees. Lower the weight slowly back towards the starting position. Aim for 4 Sets with 8-12 reps.",
                                "Leg Extension":"Sit on a leg extension machine. Position your legs under the pad and grasp the side bars with your hands. Extend your legs to the maximum, exhaling as you do so. Lower the weight back to the original position as you inhale. Aim for 4 Sets with 8-12 reps.",
                                "Leg Curls":"Lie on your back. Put your calves and heels on a stability ball. Move your hips upward until your body is straight. Engage your glutes. Slowly lift your hips and bend your knees. Extend your knees and lower your hips and back to the floor. Aim for 4 Sets with 8-12 reps.",
                                "Sit Ups":"Lie down on your back. Bend your legs and place feet firmly on the ground to stabilize your lower body. Cross your hands to opposite shoulders or place them behind your ears, without pulling on your neck. Curl your upper body all the way up toward your knees. Exhale as you lift. Slowly, lower yourself down, returning to your starting point. Inhale as you lower.",
                                "Hanging Leg Raises":"Start by holding onto a pull-up bar and raising your feet off the floor. Breathe in. As you breathe out, raise your legs up towards you, rolling your pelvis under and up to engage your lower abs. As you reach the top point, your lower back should be slightly curved upwards and you should feel a squeeze in your abs. Breathe in as you slowly lower your legs back down to the start point, pre-stretching your abs again before the next rep. Aim for 4 Sets with 8-12 reps.",
                                "Reverse crunches":"Lie down on your back. Plant your feet on the floor, hip-width apart. Bend your knees and place your arms across your chest. Contract your abs and inhale. Exhale and lift your upper body, keeping your head and neck relaxed. Inhale and return to the starting position.",
                                "Planks":"Get in the pushup position, only put your forearms on the ground instead of your hands. Your elbows should line up directly underneath your shoulders. Toes on the ground. Squeeze your glutes and tighten your abdominals. Keep a neutral neck and spine. Create a straight, strong line from head to toes – a plank, if you will. Hold that position.",
                                "Russian Twist":"Grab a medicine ball, dumbbell, or weight plate and sit on the floor with your hips and knees bent 90 degrees. Hold the weight straight out in front of you and keep your back straight (your torso should be at about 45 degrees to the floor). Explosively twist your torso as far as you can to the left, and then reverse the motion, twisting as far as you can to the right. That’s one rep, do 3 sets of 8-12 at the end of your workout."
                                ]
    
                                
                               
    
                               
    
    
    
    
    @IBOutlet weak var exerciseNameLabel: UILabel!
    
    @IBOutlet weak var ExerciseImageLabel: UIImageView!
    
    
    @IBOutlet weak var ExerciseDescriptionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        exerciseNameLabel.text = exerciseNameForDetails
        let picUrl4 = URL(string: exercisePictureLabelForDetails)
        ExerciseImageLabel.af_setImage(withURL: picUrl4!)
        //synopsisLabel.text = movie["overview"] as?String
   ExerciseDescriptionLabel.text = descriptionExercise[exerciseNameForDetails] as?String
        
    }
    



}
