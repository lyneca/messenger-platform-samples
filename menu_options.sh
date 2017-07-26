#!/bin/bash
curl -X POST -H "Content-Type: application/json" -d '{
  "persistent_menu":[
    {
      "locale":"default",
      "composer_input_disabled":true,
      "call_to_actions":[
        {
          "title":"Hit me up",
          "type":"nested",
          "call_to_actions":[
            {
              "title":"Top Meme of the Day",
              "type":"postback",
              "payload":"top_day"
            },
            {
              "title":"Newest Meme",
              "type":"postback",
              "payload":"new"
            },
            {
              "title":"Newest 9 Memes",
              "type":"postback",
              "payload":"new_9"
            },
            {
              "title":"Top 9 Memes of the Day",
              "type":"postback",
              "payload":"top_9_day"
            }
            {
              "title":"Top 9 Memes of the Week",
              "type":"postback",
              "payload":"top_9_week"
            }
          ]
        },
        {
          "type":"web_url",
          "title":"r/PrequelMemes",
          "url":"http://reddit.com/r/PrequelMemes",
          "webview_height_ratio":"full"
        }
      ]
    },
    {
      "locale":"en_US",
      "composer_input_disabled":true
    }
  ]
}' "https://graph.facebook.com/v2.6/me/messenger_profile?access_token=EAABl7flpzmEBANXHfbAYMUsZBK0KpQZAWLuhRGJGKmmbm7f3pLmxpTZCwbFdrBpYbvJhtnaG6QB5eHVVZCGtuSSiLBw4Vgfxpfrgl5oUYFtwZBMLyEf26cUE7eZCzrf6sRXuqWHJZBWUQH0GZC1J8RoIuV6IzwAT5NLPmMCHKelkeZA0WGtSUZC2M3"
    
