-- Contact types as the phone shows them. Who exists, what they stock and where they meet is
-- server-only (configs/server/contacts.lua).
--
-- actions: what the phone offers when the contact is opened, in order. Each is handled by
-- server/trapphone/contacts.lua (see docs/design.md "contact actions").
return {
    CanPassNumbers = true, -- a special contact's number can be handed to a player standing next to you

    Types = {
        plug = { label = '供货源', actions = { 'order', 'message' } },
        supplier = { label = '供应商', actions = { 'order', 'message' } },
        gang = { label = '帮派话事人', actions = { 'bribe', 'standing', 'message' } },
        informant = { label = '线人', actions = { 'intel', 'message' } },
        launderer = { label = '洗钱人', actions = { 'wash', 'message' } },
        fixer = { label = '掮客', actions = { 'market', 'message' } },
        regular = { label = '熟客', actions = { 'message' } },
        player = { label = '号码', actions = { 'message' } },
        custom = { label = '联系人', actions = { 'message' } },
    },

    MeetRadius = 60.0, -- the contact appears once you are this close to the meeting place
    MeetWaitMinutes = 10, -- how long they wait there before the meet is off
}
