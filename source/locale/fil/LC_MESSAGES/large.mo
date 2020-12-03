��    ,      |              �     �     �  W         X  �   o       �     ^     �   n     L  |  d  ,   �  J       Y  �   s	  }   
    �
     �     �  &   �  I   �  �     1     �   8     �    �    	  |     "   �    �  R   �  E     l   J     �     �  �   �  [   �  �  �  #   �    �  E   �  ]   �  u   P    �     �     �  b        j  �   �         *  c   I  �   �     �  �  �  )   #   K   M   Z  �   �   �!  �   �"  *  #     D$     S$  /   e$  V   �$  �   �$  ?   �%  �   '&     �&  L  �&  u   ;(  �   �(  /   A)  8  q)  N   �*  N   �*  z   H+  (   �+     �+  �   ,  a   �,  �  -      �.  H  �.  .   1  ]   G1  �   �1   Accessing the Logs Acknowledgments At this point, simply use the ``--sm-cluster`` option to enable distributed split-merge Autoscaling ClusterODM Bowling effect on point cloud over 13,000+ image dataset collected by World Bank Tanzania over the flood prone Msimbasi Basin, Dar es Salaam, Tanzania. Calibrate images ClusterODM also includes the option to autoscale on multiple platforms, including, to date, Amazon and Digital Ocean. This allows users to reduce costs associated with always-on instances as well as being able to scale processing based on demand. Connect via telnet to ClusterODM and add the IP addresses/port of the machines running NodeODM Create a configuration file for `DigitalOcean <https://github.com/OpenDroneMap/ClusterODM/blob/master/docs/digitalocean.md>`_ or `Amazon Web Services <https://github.com/OpenDroneMap/ClusterODM/blob/master/docs/aws.md>`_. Distributed Split-Merge GCPs are fully supported, however, there needs to be at least 3 GCP points on each submodel for the georeferencing to take place. If a submodel has fewer than 3 GCPs, a combination of the remaining GCPs + EXIF data will be used instead (which is going to be less accurate). We recommend using the ``image_groups.txt`` file to accurately control the submodel split when using GCPs. Getting Started with Distributed Split-Merge Have a functioning version of NodeJS installed and then install ClusterODM Huge props to Pau and the folks at Mapillary for their amazing contributions to OpenDroneMap through their OpenSfM code, which is a key component of the split-merge pipeline. We look forward to further pushing the limits of OpenDroneMap and seeing how big a dataset we can process. If you already know how you want to split the dataset, you can provide that information and it will be used instead of the clustering algorithm. If, for example, the NodeODM instance wasn't active when ClusterODM started, we might list nodes and see something as follows Image calibration is recommended (but not required) for large datasets because error propagation due to image distortion could cause a bowl effect on the models. Calibration instructions can be found at      `Calibrate Images <tutorials.html#calibrating-the-camera>`_. Limitations Local Split-Merge Make sure docker-machine is installed. Make sure you are running version ``1.5.1`` or higher of the NodeODM API. ODM can also automatically distribute the processing of each submodel to multiple machines via `NodeODM <https://github.com/OpenDroneMap/NodeODM>`_ nodes, orchestrated via `ClusterODM <https://github.com/OpenDroneMap/ClusterODM>`_. Setup a S3-compatible bucket for storing results. Split-merge works in WebODM out of the box as long as the processing nodes support split-merge, by enabling the ``--split`` option when creating a new task. Splitting Large Datasets Splitting a dataset into more manageable submodels and sequentially processing all submodels on the same machine is easy! Just use ``--split`` and ``--split-overlap`` to decide the the average number of images per submodels and the overlap (in meters) between submodels respectively Starting with ODM version ``0.6.0`` you can split up very large datasets into manageable chunks (called submodels), running the pipeline on each chunk, and then producing merged DEMs, orthophotos and point clouds. The process is referred to as "split-merge". The 3D textured meshes are currently not being merged as part of the workflow (only point clouds, DEMs and orthophotos are). The first step is start ClusterODM The grouping can be provided by adding a file named image_groups.txt in the main dataset folder. The file should have one line per image. Each line should have two words: first the name of the image and second the name of the group it belongs to. For example:: Then on each machine you want to use for processing, launch a NodeODM instance via This way all tasks will be automatically forwarded to the autoscaler. To address this, we can start up our local node (if not already started), and then perform a ``NODE UPDATE`` To setup autoscaling you must: Understanding the Cluster When connected via telnet, it is possible to interrogate what is happening on the cluster. For example, we can use the command HELP to find out available commands While a process is running, it is also possible to list the tasks, and view the task output Why might you use the split-merge pipeline? If you have a very large number of images in your dataset, split-merge will help make the processing more manageable on a large machine (it will require less memory). If you have many machines all connected to the same network you can also process the submodels in parallel, thus allowing for horizontal scaling and processing thousands of images more quickly. You can then launch ClusterODM with You should always have at least one static NodeODM node attached to ClusterODM, even if you plan to use the autoscaler for all processing. If you setup auto scaling, you can't have zero nodes and rely 100% on the autoscaler. You need to attach a NodeODM node to act as the "reference node" otherwise ClusterODM will not know how to handle certain requests (for the forwarding the UI, for validating options prior to spinning up an instance, etc.). For this purpose, you should add a "dummy" NodeODM node and lock it You should see something similar to following messages in the console `Help edit these docs! <https://github.com/OpenDroneMap/docs/blob/publish/source/large.rst>`_ will create 3 submodels. Make sure to pass ``--split-overlap 0`` if you manually provide a ``image_groups.txt`` file. Project-Id-Version: OpenDroneMap 2.0.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-10-26 14:39-0400
PO-Revision-Date: 2020-07-21 21:10+0000
Last-Translator: Ma. Carmina Filamor-Badajos <mina.filamor@yahoo.com>, 2020
Language: fil
Language-Team: Filipino (https://www.transifex.com/americanredcross/teams/111882/fil/)
Plural-Forms: nplurals=2; plural=(n == 1 || n==2 || n==3) || (n % 10 != 4 || n % 10 != 6 || n % 10 != 9)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 Pag-access sa Logs Acknowledgments Sa puntong ito, gamitin ang ``--sm-cluster`` na opsiyon para ma-enable ang distributed split-merge Autoscaling ClusterODM Bowling effect sa point cloud over 13,000+ na image dataset na nakolekta ng World Bank Tanzania sa flood prone Msimbasi Basin, Dar es Salaam, Tanzania. Calibrate images Ang ClusterODM ay mayroon din opsiyon na autoscalesa maramihan na plataporma kasama ng, hanggang ngayon, Amazon at Digital Ocean. Tinutulungan nito ang user na mababaan ang presyo na nauugnay sa always-on na mga pagkakataon pati na rin ang kakayanan na scale ang proseso base sa demand. Kumonekta via telnet to CLusterODM at i-add ang IP adresses/port ng machine na gumagamit ng NodeODM Gumawa ng file para sa `DigitalOcean <https://github.com/OpenDroneMap/ClusterODM/blob/master/docs/digitalocean.md>`_ o `Amazon Web Services <https://github.com/OpenDroneMap/ClusterODM/blob/master/docs/aws.md>`_. Distributed Split-Merge Ang GCPs ay suportado ng buo pero kailangan ng kahit man lang 3 GCP points kada submodel para sa georeferencing na magsimula.  Kung ang submodel ay may mas kaunti sa 3 GCPs, ang kombinasyon ng natitirang GCPs + EXIF data ang gagamitin (na medyo hindi kasing eksakto). Nirerekomenda na gamitin ang ``image_groups.txt`` file para eksaktong macontrol ang submodel split habang ginagamit ang GCPs. Paano simulan ang Distributed Split-Merge Mag-install ng gumaganang bersiyon ng NodeJS tsaka maginstall ng ClusterODM Malaking pagpugay kay Pau at sa mga tao ng Mapillary para sa kanilang kamangha-mangha na kontribusyon sa OpenDroneMap sa pamamagitan ng kanilang OpenSfM code, na isang pangunahing sangkap ng split-merge pipeline. Inaabangan namin ang kaunlaran at pagtulak sa mga limitasyon ng OpenDronMap at  makita kung gaano kalaki ang dataset na mapa-process. Kung alam mo na kung papaano mo gusto hatiin ang dataset, maaaring maglaan ng impormasyon at ito ay magagamit sa halip na clustering algorithm. Kung halimbawa naman ay ang Node ODM instance ay hindi aktibo kapag sinimulan ang ClusterODM, maglilista kami ng nodesat makikita ang mga sumusunod: Ang image calibration ay rekomendado (pero hindi required) para sa large datasets dahil ang error propagation dahilan ng image distortion ay maaaring magsanhi ng bowl effect sa mga models. Ang image calibration instruction ay makikita sa `Calibrate Images <tutorials.html#calibrating-the-camera>`_. Mga limitasyon Local Split-Merge Siguraduhin na ang docker-machine ay installed. Siguraduhin na ikaw ay gumagamit ng bersiyon ``1.5.1`` o mas mataas pa na NodeODM API. Ang ODM ay awtomatikong namamahagi ng proseso kada submodel sa maramihan na machines sa pamamagitan ng `NodeODM <https://github.com/OpenDroneMap/NodeODM>`_ nodes, na inayos sa pamamagitan ng `ClusterODM <https://github.com/OpenDroneMap/ClusterODM>`_. I-set up ang S3-compatible bucket para maitago ang mga resulta. Ang split-merge ay gumagana sa WebODM sa labas ng box basta ang process nodes ay sumosoporta sa slit-merge, sa pagenable ng ``--split`` option kapag gumagawa ng bagong task. Splitting Large Datasets Ang pagsplit ng dataset sa mas maayos na submodels at sunod-sunod na pagproseso n lahat ng submodels sa iisang machine ay madali lamang! Gamitin lang ang ``--split`` at ``--split-overlap`` para mapagdesisyunan ang karaniwan na bilang ng mga imahe kada submodel at i-overlap (sa metro) sa pagitan ng submodels ayon sa pagkakabanggit. sa ODM bersiyon ``0.6.0``, maaaring hatiin ang malalaking datasets sa mas maliliit na grupo na tinatawag na submodels Ang 3D textured meshes ay kasalukuyan na hindi name-merge bilang parte ng workflow (pino-point out lamang ang clouds, DEMS at orthophotos are). Ang unang hakbang ay ang simulan ang ClusterODM Ang pagpapangkat ay maibibigay sa pamamagitan ng pagdagdag ng file name na image_groups.txt sa main dataset folder. Ang file ay dapat maglaman ng isang linya kada imahe. Ang kada linya ay dapat may dalawang salita: una, ang pangalan ng imahe at pangalawa, ang pangalan ng pangkat ng nakakasakop dito. Halimbawa:: Tapos, sa mga machine na gusto mong gamitin, i-launch ang NodeODM instance via Sa paraan na ito, ang lahat ng tasks ay awtomatikong napapadala sa autoscaler. Para maresolusyonan ito, maaaring magsimula ang lokal na node (kung hindi pa nasisimulan) at magperform ng ``NODE UPDATE`` Para i-set up ang autoscaling, dapat na: Pagkaunawa sa Cluster Kapag konektado via telnet, posible na magtanong sa kung ano na ang kalagayan ng cluster. Halimbawa, pwedeng gamitin ang command na HELP para hanapin ang mga available na commands. Habang ang proseso ay umaandar, posible rin na ilista ang mga task at tignan ang mga task output. Bakit gagamitin ang split-merge pipeline? Kung may napakalaking bilang ng imahe sa dataset, split-merge ang makaktulong sa pagpaparocess na maging mas maayos sa malaking machine (mangangailangan ito ng mas maliit na memory). Kung maraming machine ang nakakonekta sa iisang network, pwede i-proseso ang submodels ng parallel, papayagan nito ang horizontal scaling at pagproseso ng libong imahe ng mabilis. Maaari ng simulan ang ClusterODM Dapat ay mayroon kang kahit man lamang isang static NodeODM node na nakakabit sa ClusterODM, kahit na plano mo na gamitin ang autoscaler sa lahat ng proseso. Kapag naset-up ang autoscaling, hindi na pwedeng magka-zero nodes at umasa sa autoscaler ng 100%. Kailangan kabitan ng NodeODM node para kumilos bilang "reference node" kung hindi ma'y ang ClusterODM ay hindi malalaman kung paano pangasiwaan ng mga ilang hiling (sa pagforward ng UI, sa validating options bago sa spinning up ng instance, etc.). Sa kadahilanan na ito, kailangan idagdag ang "dummy" NodeODM node at i-lock ito. Dapat makita ang similar na mensahe sa console `Help edit these docs! <https://github.com/OpenDroneMap/docs/blob/publish/source/large.rst>`_ gagawa ng 3 submodels. Siguraduhin na daanan ang ``--split-overlap 0`` kung mano-mano na magbibigay ng ``image_groups.txt`` file. 