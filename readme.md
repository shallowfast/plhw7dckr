### example output demo

```cmd
PS C:\_plhomework\plhw7docker> ls


    Directory: C:\_plhomework\plhw7docker


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/29/2023  10:39 PM             50 Dockerfile
-a----        10/29/2023  11:33 PM            112 ncclient.sh
-a----        10/29/2023  11:34 PM             83 ncserver.sh


PS C:\_plhomework\plhw7docker> docker run --network=plnetwork -v ${PWD}:/app -d --name serv homeworkncimg ncserver.sh
c1a4820b695193184261671029548e75ec1b80ea672c2b17dddb5a362cce97a5
PS C:\_plhomework\plhw7docker> docker run --network=plnetwork -v ${PWD}:/app homeworkncimg ncclient.sh serv
serv (172.18.0.2:1814) open
sent 13, rcvd 0
PS C:\_plhomework\plhw7docker> ls


    Directory: C:\_plhomework\plhw7docker


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/29/2023  10:39 PM             50 Dockerfile
-a----        10/29/2023  11:37 PM             13 log
-a----        10/29/2023  11:33 PM            112 ncclient.sh
-a----        10/29/2023  11:34 PM             83 ncserver.sh


PS C:\_plhomework\plhw7docker> cat log
some message
PS C:\_plhomework\plhw7docker>
```