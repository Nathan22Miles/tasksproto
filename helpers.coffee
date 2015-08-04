# add status and status coloring
# show completed widget
# add links
# toggle My Tasks / All Tasks
# add book selection
# add person selection
# format checks
# format check completion

# meteor deploy myapp.meteor.com

# Session.set()

scopeChange = ->
    text = $("#scope-filter").find('option:selected').text()
    if text
        Session.set("scope-filter", text)

if Meteor.isClient 

    Template.main.helpers
        tasks: -> 
            filter =
                book: "LUK"
                status: "In Progress"
            filter =
                book: "1JN"
            results = Tasks.find(filter).fetch()

            lastStage = ""
            lastAssignedTo = ""

            for task, i in results
                if task.stage == lastStage
                    task.stage = ""
                else
                    lastStage = task.stage
                    
                if task.assignedTo == lastAssignedTo
                    task.assignedTo = "\""
                else
                    lastAssignedTo = task.assignedTo
            results

        myTasks: -> true

    Template.task.helpers
        myTasks: -> true
        id: -> this._id
        completed: -> this.chapters == this.chaptersCompleted

    Template.task.rendered = ->
        progressbar = $("#progress_" + this.data._id)
        progresslabel = $("#progresslabel_" + this.data._id)
        progressbar.progressbar
            value: this.data.chaptersCompleted
        progressbar.progressbar("option", "max", this.data.chapters)
        progressbar.height(20).width(200)
        if this.data.chaptersCompleted > 0
             progressbar.progressbar("value", this.data.chaptersCompleted)
             progresslabel.text(" Completed: 1-" + this.data.chaptersCompleted)

    Template.main.events
        "change #scope-filter": (e) ->
            scopeChange()


