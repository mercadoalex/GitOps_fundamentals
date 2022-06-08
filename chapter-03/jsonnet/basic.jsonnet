{
   // Look! It's JSON with comments!
   "apiVersion": "apps/v1",
   "kind": "Deployment",
   "metadata": {
      "name": "nginx"
   },
   "spec": {
      "selector": {
         "matchLabels": {
            "app": "nginx"
         }
      },
      "replicas": 2,
      "template": {
         "metadata": {
            "labels": {
               "app": "nginx"
            }
         },
         "spec": {
            "containers": [
               {
                  "name": "nginx",
                  "image": "nginx:1.14.2",
                  "ports": [
                     {
                        "containerPort": 80
                     }
                  ]
               }
            ]
         }
      }
   }
}