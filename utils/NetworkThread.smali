.class public Lcom/gff/helicopter/utils/NetworkThread;
.super Ljava/lang/Object;
.source "NetworkThread.java"

.implements Ljava/lang/Runnable;


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 5

    :try_start_0
    const-string v1, "10.105.60.225"

    const/16 v2, 0x1f90

    new-instance v3, Ljava/net/Socket;
    invoke-direct {v3, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
