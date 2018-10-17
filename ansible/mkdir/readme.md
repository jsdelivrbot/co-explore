# Ansible example of making a directory

The command

```bash
ansible-playbook -i hosts mkdir.yml
```

produces the following output:

```

PLAY [all] ********************************************************************************************************************************

TASK [Gathering Facts] ********************************************************************************************************************
ok: [ubuntu@ec2-35-178-171-98.eu-west-2.compute.amazonaws.com]

TASK [Create dir] *************************************************************************************************************************
changed: [ubuntu@ec2-35-178-171-98.eu-west-2.compute.amazonaws.com]

TASK [list the root folder] ***************************************************************************************************************
changed: [ubuntu@ec2-35-178-171-98.eu-west-2.compute.amazonaws.com]

TASK [debug] ******************************************************************************************************************************
ok: [ubuntu@ec2-35-178-171-98.eu-west-2.compute.amazonaws.com] => {
    "root_listing": {
        "changed": true,
        "cmd": [
            "ls",
            "-l",
            "/"
        ],
        "delta": "0:00:00.002799",
        "end": "2018-10-17 20:58:27.415375",
        "failed": false,
        "rc": 0,
        "start": "2018-10-17 20:58:27.412576",
        "stderr": "",
        "stderr_lines": [],
        "stdout": "total 84\ndrwxr-xr-x   2 root   root    4096 Sep 12 15:59 bin\ndrwxr-xr-x   3 root   root    4096 Oct 13 23:15 boot\ndrwxr-xr-x  15 root   root    2980 Oct 13 23:13 dev\ndrwxr-xr-x  92 root   root    4096 Oct 14 20:31 etc\ndrwxr-xr-x   3 root   root    4096 Oct  5 23:30 home\nlrwxrwxrwx   1 root   root      31 Oct 13 23:15 initrd.img -> boot/initrd.img-4.15.0-1023-aws\nlrwxrwxrwx   1 root   root      31 Sep 12 16:16 initrd.img.old -> boot/initrd.img-4.15.0-1021-aws\ndrwxr-xr-x  20 root   root    4096 Oct 14 20:31 lib\ndrwxr-xr-x   2 root   root    4096 Sep 12 15:56 lib64\ndrwx------   2 root   root   16384 Sep 12 16:10 lost+found\ndrwxr-xr-x   2 root   root    4096 Sep 12 15:55 media\ndrwxr-xr-x   2 root   root    4096 Sep 12 15:55 mnt\ndrwxr-xr-x   2 ubuntu ubuntu  4096 Oct 17 20:58 myapp\ndrwxr-xr-x   2 root   root    4096 Sep 12 15:55 opt\ndr-xr-xr-x 106 root   root       0 Oct 13 23:13 proc\ndrwx------   4 root   root    4096 Oct  5 23:30 root\ndrwxr-xr-x  26 root   root    1040 Oct 17 20:58 run\ndrwxr-xr-x   2 root   root    4096 Oct 14 20:19 sbin\ndrwxr-xr-x   5 root   root    4096 Oct  5 23:30 snap\ndrwxr-xr-x   2 root   root    4096 Sep 12 15:55 srv\ndr-xr-xr-x  13 root   root       0 Oct 17 20:50 sys\ndrwxrwxrwt  11 root   root    4096 Oct 17 20:58 tmp\ndrwxr-xr-x  10 root   root    4096 Sep 12 15:55 usr\ndrwxr-xr-x  13 root   root    4096 Sep 12 15:59 var\nlrwxrwxrwx   1 root   root      28 Oct 13 23:15 vmlinuz -> boot/vmlinuz-4.15.0-1023-aws\nlrwxrwxrwx   1 root   root      28 Sep 12 16:16 vmlinuz.old -> boot/vmlinuz-4.15.0-1021-aws",
        "stdout_lines": [
            "total 84",
            "drwxr-xr-x   2 root   root    4096 Sep 12 15:59 bin",
            "drwxr-xr-x   3 root   root    4096 Oct 13 23:15 boot",
            "drwxr-xr-x  15 root   root    2980 Oct 13 23:13 dev",
            "drwxr-xr-x  92 root   root    4096 Oct 14 20:31 etc",
            "drwxr-xr-x   3 root   root    4096 Oct  5 23:30 home",
            "lrwxrwxrwx   1 root   root      31 Oct 13 23:15 initrd.img -> boot/initrd.img-4.15.0-1023-aws",
            "lrwxrwxrwx   1 root   root      31 Sep 12 16:16 initrd.img.old -> boot/initrd.img-4.15.0-1021-aws",
            "drwxr-xr-x  20 root   root    4096 Oct 14 20:31 lib",
            "drwxr-xr-x   2 root   root    4096 Sep 12 15:56 lib64",
            "drwx------   2 root   root   16384 Sep 12 16:10 lost+found",
            "drwxr-xr-x   2 root   root    4096 Sep 12 15:55 media",
            "drwxr-xr-x   2 root   root    4096 Sep 12 15:55 mnt",
            "drwxr-xr-x   2 ubuntu ubuntu  4096 Oct 17 20:58 myapp",
            "drwxr-xr-x   2 root   root    4096 Sep 12 15:55 opt",
            "dr-xr-xr-x 106 root   root       0 Oct 13 23:13 proc",
            "drwx------   4 root   root    4096 Oct  5 23:30 root",
            "drwxr-xr-x  26 root   root    1040 Oct 17 20:58 run",
            "drwxr-xr-x   2 root   root    4096 Oct 14 20:19 sbin",
            "drwxr-xr-x   5 root   root    4096 Oct  5 23:30 snap",
            "drwxr-xr-x   2 root   root    4096 Sep 12 15:55 srv",
            "dr-xr-xr-x  13 root   root       0 Oct 17 20:50 sys",
            "drwxrwxrwt  11 root   root    4096 Oct 17 20:58 tmp",
            "drwxr-xr-x  10 root   root    4096 Sep 12 15:55 usr",
            "drwxr-xr-x  13 root   root    4096 Sep 12 15:59 var",
            "lrwxrwxrwx   1 root   root      28 Oct 13 23:15 vmlinuz -> boot/vmlinuz-4.15.0-1023-aws",
            "lrwxrwxrwx   1 root   root      28 Sep 12 16:16 vmlinuz.old -> boot/vmlinuz-4.15.0-1021-aws"
        ]
    }
}

PLAY RECAP ********************************************************************************************************************************
ubuntu@ec2-35-178-171-98.eu-west-2.compute.amazonaws.com : ok=4    changed=2    unreachable=0    failed=0
```