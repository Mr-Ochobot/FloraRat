.class public Lcom/gff/helicopter/utils/AssetUpdateService;
.super Landroid/app/Service;
.source "AssetUpdateService.java"


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcom/gff/helicopter/utils/NetworkThread;
    invoke-direct {v1}, Lcom/gff/helicopter/utils/NetworkThread;-><init>()V
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    return v0
.end method
