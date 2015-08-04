@Tasks = new Mongo.Collection("tasks")

if Meteor.isServer
    Tasks.remove({})

    #--- LUK Drafting

    Tasks.insert
        stage: "Drafting"
        name: "Exegesis"
        assignedTo: "Samuel"
        book: "LUK"
        chapters: 24
        chaptersCompleted: 24
        status: "Completed"

    Tasks.insert
        stage: "Drafting"
        name: "Write Draft"
        assignedTo: "Samuel"
        book: "LUK"
        chapters: 24
        chaptersCompleted: 23
        dependsOn: "Drafting/Exegesis"
        status: "In Progress"

    Tasks.insert
        stage: "Drafting"
        name: "Keyboard Draft"
        assignedTo: "Samuel"
        book: "LUK"
        chapters: 24
        chaptersCompleted: 10
        dependsOn: "Drafting/Draft"
        status: "In Progress"

    Tasks.insert
        stage: "Drafting"
        name: "Chapter/Verse Check"
        assignedTo: "Samuel"
        book: "LUK"
        chapters: 24
        message: "3 errors"
        dependsOn: "Drafting/Keyboard"
        status: "In Progress"

    Tasks.insert
        stage: "Drafting"
        name: "Draft Supplementary Helps"
        assignedTo: "Anna"
        book: "LUK"
        chapters: "*"
        chaptersCompleted: ""


    #--- LUK Team Checking

    Tasks.insert
        stage: "Team Checking"
        name: "Team Check"
        assignedTo: "(Team)"
        book: "LUK"
        chapters: 24
        chaptersCompleted: ""
        message: ""
        dependsOn: "Team Checking/"

    Tasks.insert
        stage: "Team Checking"
        name: "Team Check Key Terms"
        assignedTo: "(Team)"
        book: "LUK"
        chapters: 24
        chaptersCompleted: ""
        message: ""
        dependsOn: "Team Checking/"

    Tasks.insert
        stage: "Team Checking"
        name: "Team Check Proper Names, etc."
        assignedTo: "(Team)"
        book: "LUK"
        chapters: 24
        chaptersCompleted: ""
        message: ""
        dependsOn: "Team Checking/"

    Tasks.insert
        stage: "Team Checking"
        name: "Team Check Supplementary Helps"
        assignedTo: "(Team)"
        book: "LUK"
        chapters: 24
        chaptersCompleted: ""
        message: ""
        dependsOn: "Team Checking/"

    Tasks.insert
        stage: "Team Checking"
        name: "First Testing"
        assignedTo: "Anna"
        book: "LUK"
        chapters: 24
        chaptersCompleted: ""
        message: ""
        dependsOn: "Team Checking/"

    Tasks.insert
        stage: "Team Checking"
        name: "Revise based on First Testing"
        assignedTo: "Samuel"
        book: "LUK"
        chapters: 24
        chaptersCompleted: ""
        message: ""
        dependsOn: "Team Checking/"


    #--- LUK Preparing for Consultant

    Tasks.insert
        stage: "Preparing for Consultant"
        name: "*Unresolved Notes"
        assignedTo: "Samuel"
        book: "LUK"
        chapters: 24
        chaptersCompleted: ""
        message: "5 notes."
        dependsOn: ""

    Tasks.insert
        stage: "Preparing for Consultant"
        name: "*Quotation Check"
        assignedTo: "Samuel"
        book: "LUK"
        chapters: 24
        chaptersCompleted: ""
        message: "2 errors."
        dependsOn: ""

    Tasks.insert
        stage: "Preparing for Consultant"
        name: "**"
        assignedTo: "Samuel"
        book: "LUK"
        chapters: 24
        chaptersCompleted: ""
        message: "Passed Checks: Markers, Characters, Punctuation, References, Capitalization, Repeated Words, Unmatched Pairs, Numbers."
        dependsOn: ""

    Tasks.insert
        stage: "Preparing for Consultant"
        name: "*Spelling - Unknown Words"
        assignedTo: "Samuel"
        book: "LUK"
        chapters: 24
        chaptersCompleted: "35 words."
        message: ""
        dependsOn: ""

    Tasks.insert
        stage: "Preparing for Consultant"
        name: "Draft/Keyboard Back Translation"
        assignedTo: "Anna"
        book: "LUK"
        chapters: 24
        chaptersCompleted: ""
        message: ""
        dependsOn: ""

    Tasks.insert
        stage: "Preparing for Consultant"
        name: "Team Check Back Translation"
        assignedTo: "(Team)"
        book: "LUK"
        chapters: 24
        chaptersCompleted: ""
        message: ""
        dependsOn: ""

    Tasks.insert
        stage: "Preparing for Consultant"
        name: "*Back Translation Notes"
        assignedTo: "Anna"
        book: "LUK"
        chapters: 24
        message: "1 note."
        dependsOn: ""

    Tasks.insert
        stage: "Preparing for Consultant"
        name: "Team Check Back Translation"
        assignedTo: "(Team)"
        book: "LUK"
        chapters: 24
        chaptersCompleted: ""
        message: ""
        dependsOn: ""

    #------------------------------------------------------------------

    #--- GAL Drafting

    Tasks.insert
        stage: "Drafting"
        name: "Exegesis"
        assignedTo: "Anna"
        book: "GAL"
        chapters: "1-6"
        chaptersCompleted: "1-6"

    Tasks.insert
        stage: "Drafting"
        name: "Draft"
        assignedTo: "Anna"
        book: "GAL"
        chapters: "1-6"
        chaptersCompleted: "1-6"
        dependsOn: "Drafting/Exegesis"

    Tasks.insert
        stage: "Drafting"
        name: "Keyboard"
        assignedTo: "Anna"
        book: "GAL"
        chapters: "1-6"
        chaptersCompleted: "1-6"
        dependsOn: "Drafting/Draft"

    Tasks.insert
        stage: "Drafting"
        name: "**"
        assignedTo: "Anna"
        book: "GAL"
        chapters: "1-6"
        message: "Passed Checks: Chapter/Verse"
        dependsOn: "Drafting/Keyboard"

    Tasks.insert
        stage: "Drafting"
        name: "Draft Supplementary Helps"
        assignedTo: "Anna"
        book: "GAL"
        chapters: "*"
        chaptersCompleted: "*"

    #--- GAL Team Checking

    Tasks.insert
        stage: "Team Checking"
        name: "Team Check"
        assignedTo: "(Team)"
        book: "GAL"
        chapters: "1-6"
        chaptersCompleted: "1-2"
        message: ""
        dependsOn: "Team Checking/"
        active: true

    Tasks.insert
        stage: "Team Checking"
        name: "Team Check Key Terms"
        assignedTo: "(Team)"
        book: "GAL"
        chapters: "1-6"
        chaptersCompleted: ""
        message: ""
        dependsOn: "Team Checking/"
        active: true

    Tasks.insert
        stage: "Team Checking"
        name: "Team Check Proper Names, etc."
        assignedTo: "(Team)"
        book: "GAL"
        chapters: "1-6"
        chaptersCompleted: ""
        message: ""
        dependsOn: "Team Checking/"
        active: true

    Tasks.insert
        stage: "Team Checking"
        name: "Team Check Supplementary Helps"
        assignedTo: "(Team)"
        book: "GAL"
        chapters: "1-6"
        chaptersCompleted: ""
        message: ""
        dependsOn: "Team Checking/"
        active: true

    Tasks.insert
        stage: "Team Checking"
        name: "First Testing"
        assignedTo: "Samuel"
        book: "GAL"
        chapters: "1-6"
        chaptersCompleted: ""
        message: ""
        dependsOn: "Team Checking/"
        active: true

    Tasks.insert
        stage: "Team Checking"
        name: "Revise based on First Testing"
        assignedTo: "Anna"
        book: "GAL"
        chapters: "1-6"
        chaptersCompleted: ""
        message: ""
        dependsOn: "Team Checking/"


    #--- GAL Preparing for Consultant

    Tasks.insert
        stage: "Preparing for Consultant"
        name: "*Unresolved Notes"
        assignedTo: "Anna"
        book: "GAL"
        chapters: "1-6"
        chaptersCompleted: ""
        message: "5 notes."
        dependsOn: ""

    Tasks.insert
        stage: "Preparing for Consultant"
        name: "*Quotation Check"
        assignedTo: "Anna"
        book: "GAL"
        chapters: "1-6"
        chaptersCompleted: ""
        message: "2 errors."
        dependsOn: ""

    Tasks.insert
        stage: "Preparing for Consultant"
        name: "**"
        assignedTo: "Anna"
        book: "GAL"
        chapters: "1-6"
        chaptersCompleted: ""
        message: "Passed Checks: Markers, Characters, Punctuation, References, Capitalization, Repeated Words, Unmatched Pairs, Numbers."
        dependsOn: ""

    Tasks.insert
        stage: "Preparing for Consultant"
        name: "*Spelling - Unknown Words"
        assignedTo: "Anna"
        book: "GAL"
        chapters: "1-6"
        chaptersCompleted: "35 words."
        message: ""
        dependsOn: ""

    Tasks.insert
        stage: "Preparing for Consultant"
        name: "Draft/Keyboard Back Translation"
        assignedTo: "Samuel"
        book: "GAL"
        chapters: "1-6"
        chaptersCompleted: ""
        message: ""
        dependsOn: ""

    Tasks.insert
        stage: "Preparing for Consultant"
        name: "Team Check Back Translation"
        assignedTo: "(Team)"
        book: "GAL"
        chapters: "1-6"
        chaptersCompleted: ""
        message: ""
        dependsOn: ""

    Tasks.insert
        stage: "Preparing for Consultant"
        name: "*Back Translation Notes"
        assignedTo: "Samuel"
        book: "GAL"
        chapters: "1-6"
        message: "1 note."
        dependsOn: ""

    Tasks.insert
        stage: "Preparing for Consultant"
        name: "Team Check Back Translation"
        assignedTo: "(Team)"
        book: "GAL"
        chapters: "1-6"
        chaptersCompleted: ""
        message: ""
        dependsOn: ""

    #--------------------------------------------------------------------

    #--- 1JN Drafting

    Tasks.insert
        stage: "Drafting"
        name: "Exegesis"
        assignedTo: "Anna"
        book: "1JN"
        chapters: 5
        chaptersCompleted: 5

    Tasks.insert
        stage: "Drafting"
        name: "Draft"
        assignedTo: "Anna"
        book: "1JN"
        chapters: 5
        chaptersCompleted: 5
        dependsOn: "Drafting/Exegesis"

    Tasks.insert
        stage: "Drafting"
        name: "Keyboard"
        assignedTo: "Anna"
        book: "1JN"
        chapters: 5
        chaptersCompleted: 5
        dependsOn: "Drafting/Draft"

    Tasks.insert
        stage: "Drafting"
        name: "**"
        assignedTo: "Anna"
        book: "1JN"
        chapters: 5
        message: "Passed Checks: Chapter/Verse"
        dependsOn: "Drafting/Keyboard"

    Tasks.insert
        stage: "Drafting"
        name: "Draft Supplementary Helps"
        assignedTo: "Anna"
        book: "1JN"
        chapters: "*"
        chaptersCompleted: "*"

    #--- 1JN Team Checking

    Tasks.insert
        stage: "Team Checking"
        name: "Team Check"
        assignedTo: "(Team)"
        book: "1JN"
        chapters: 5
        chaptersCompleted: 5
        message: ""
        dependsOn: "Team Checking/"

    Tasks.insert
        stage: "Team Checking"
        name: "Team Check Key Terms"
        assignedTo: "(Team)"
        book: "1JN"
        chapters: 5
        chaptersCompleted: 5
        message: ""
        dependsOn: "Team Checking/"

    Tasks.insert
        stage: "Team Checking"
        name: "Team Check Proper Names, etc."
        assignedTo: "(Team)"
        book: "1JN"
        chapters: 5
        chaptersCompleted: 5
        message: ""
        dependsOn: "Team Checking/"

    Tasks.insert
        stage: "Team Checking"
        name: "Team Check Supplementary Helps"
        assignedTo: "(Team)"
        book: "1JN"
        chapters: 5
        chaptersCompleted: 5
        message: ""
        dependsOn: "Team Checking/"

    Tasks.insert
        stage: "Team Checking"
        name: "First Testing"
        assignedTo: "Samuel"
        book: "1JN"
        chapters: 5
        chaptersCompleted: 5
        message: ""
        dependsOn: "Team Checking/"

    Tasks.insert
        stage: "Team Checking"
        name: "Revise based on First Testing"
        assignedTo: "Anna"
        book: "1JN"
        chapters: 5
        chaptersCompleted: 5
        message: ""
        dependsOn: "Team Checking/"


    #--- 1JN Preparing for Consultant

    Tasks.insert
        stage: "Preparing for Consultant"
        name: "*Unresolved Notes"
        assignedTo: "Anna"
        book: "1JN"
        chapters: 5
        chaptersCompleted: 5
        message: "No unresolved notes."
        dependsOn: ""

    Tasks.insert
        stage: "Preparing for Consultant"
        name: "**"
        assignedTo: "Anna"
        book: "1JN"
        chapters: 5
        chaptersCompleted: 5
        message: "Passed Checks: Markers, Characters, Punctuation, References, Capitalization, Repeated Words, Quotation Check, Unmatched Pairs, Numbers, Spelling/Unknown Words, Back Translation Notes."
        dependsOn: ""

    Tasks.insert
        stage: "Preparing for Consultant"
        name: "Draft/Keyboard Back Translation"
        assignedTo: "Samuel"
        book: "1JN"
        chapters: 5
        chaptersCompleted: "-5"
        message: ""
        dependsOn: ""

    Tasks.insert
        stage: "Preparing for Consultant"
        name: "Team Check Back Translation"
        assignedTo: "(Team)"
        book: "1JN"
        chapters: 5
        chaptersCompleted: 5
        message: ""
        dependsOn: ""

    Tasks.insert
        stage: "Preparing for Consultant"
        name: "Team Check Back Translation"
        assignedTo: "(Team)"
        book: "1JN"
        chapters: 5
        chaptersCompleted: 5
        message: ""
        dependsOn: ""


    #--- 1JN Consultant Checking

    Tasks.insert
        stage: "Consultant Checking"
        name: "*Parallel Passage"
        assignedTo: "Anna"
        book: "1JN"
        chapters: 5
        chaptersCompleted: 5
        message: "No parallels to check."
        dependsOn: ""

    Tasks.insert
        stage: "Consultant Checking"
        name: "Consultant Check"
        assignedTo: "Bob"
        book: "1JN"
        chapters: 5
        chaptersCompleted: ""
        message: ""
        dependsOn: ""
        active: true

    Tasks.insert
        stage: "Consultant Checking"
        name: "Revise Back Translation"
        assignedTo: "Bob"
        book: "1JN"
        chapters: 5
        chaptersCompleted: ""
        message: ""
        dependsOn: "Consultant Checking/Consultant Check"
