
a1 = Action.create(title: 'Apply',body: 'Apply with this company',state: 'current',job_id: 1)
a2 = Action.create(title: 'Apply',body: 'Apply with this company',state: 'previous',job_id: 2)
a3 = Action.create(title: 'Follow Up',body: 'Follow up with this company',state: 'previous',job_id: 2)
a4 = Action.create(title: 'Phone Interview',body: 'Have a phone interview',state: 'current',job_id: 2)
a5 = Action.create(title: 'In Person Interview',body: 'Have an in person interview',state: 'future',job_id: 2)
a6 = Action.create(title: 'Apply',body: 'Apply with this company',state: 'current',job_id: 3)

Job.create(position: 'Taxi Driver', company: 'pikop and dropov', actions: [a1])
Job.create(position: 'Demo Tester', company: 'ACME', actions: [a2, a3, a4, a5])
Job.create(position: 'Apple Holder', company: 'Robin\'s Archery', actions: [a6])

User.create(email: "foo@example.com", password: "1234567890", password_confirmation: "1234567890")
