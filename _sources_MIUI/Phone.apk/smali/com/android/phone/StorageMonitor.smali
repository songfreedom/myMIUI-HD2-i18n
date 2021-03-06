.class public Lcom/android/phone/StorageMonitor;
.super Ljava/lang/Object;
.source "StorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/StorageMonitor$Listener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsUsingExternalStorage:Z

.field private mListener:Lcom/android/phone/StorageMonitor$Listener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/android/phone/StorageMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/phone/StorageMonitor$1;-><init>(Lcom/android/phone/StorageMonitor;)V

    iput-object v0, p0, Lcom/android/phone/StorageMonitor;->mHandler:Landroid/os/Handler;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/StorageMonitor;->mReceiverRegistered:Z

    .line 41
    new-instance v0, Lcom/android/phone/StorageMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/phone/StorageMonitor$2;-><init>(Lcom/android/phone/StorageMonitor;)V

    iput-object v0, p0, Lcom/android/phone/StorageMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    iput-object p1, p0, Lcom/android/phone/StorageMonitor;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/StorageMonitor;->mIsUsingExternalStorage:Z

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/StorageMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/phone/StorageMonitor;->checkStorageSpace()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/StorageMonitor;)Lcom/android/phone/StorageMonitor$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/phone/StorageMonitor;->mListener:Lcom/android/phone/StorageMonitor$Listener;

    return-object v0
.end method

.method private checkStorageSpace()V
    .locals 4

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/StorageMonitor;->isStorageSpaceLow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/phone/StorageMonitor;->mListener:Lcom/android/phone/StorageMonitor$Listener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/phone/StorageMonitor;->mListener:Lcom/android/phone/StorageMonitor$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/phone/StorageMonitor$Listener;->onError(I)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/StorageMonitor;->stopMonitor()V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/phone/StorageMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private isStorageSpaceLow()Z
    .locals 9

    .prologue
    .line 58
    iget-boolean v5, p0, Lcom/android/phone/StorageMonitor;->mIsUsingExternalStorage:Z

    if-nez v5, :cond_0

    .line 59
    iget-object v5, p0, Lcom/android/phone/StorageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Environment;->isInternalStorageLow(Landroid/content/ContentResolver;)Z

    move-result v5

    .line 67
    :goto_0
    return v5

    .line 62
    :cond_0
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 65
    .local v4, stats:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 66
    .local v2, blockSize:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 67
    .local v0, availableBlocks:J
    mul-long v5, v0, v2

    const-wide/32 v7, 0x100000

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isUsingExternalStorage()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/phone/StorageMonitor;->mIsUsingExternalStorage:Z

    return v0
.end method

.method public startMonitor(Lcom/android/phone/StorageMonitor$Listener;)I
    .locals 5
    .parameter "listener"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 87
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/StorageMonitor;->mIsUsingExternalStorage:Z

    .line 89
    invoke-direct {p0}, Lcom/android/phone/StorageMonitor;->isStorageSpaceLow()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 106
    :goto_0
    return v1

    .line 93
    :cond_0
    if-eqz p1, :cond_2

    .line 94
    iput-object p1, p0, Lcom/android/phone/StorageMonitor;->mListener:Lcom/android/phone/StorageMonitor$Listener;

    .line 95
    iget-boolean v1, p0, Lcom/android/phone/StorageMonitor;->mIsUsingExternalStorage:Z

    if-eqz v1, :cond_1

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/android/phone/StorageMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/StorageMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    iput-boolean v3, p0, Lcom/android/phone/StorageMonitor;->mReceiverRegistered:Z

    .line 103
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/StorageMonitor;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    move v1, v4

    .line 106
    goto :goto_0
.end method

.method public stopMonitor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/phone/StorageMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    iget-boolean v0, p0, Lcom/android/phone/StorageMonitor;->mIsUsingExternalStorage:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/StorageMonitor;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/phone/StorageMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/StorageMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    iput-boolean v2, p0, Lcom/android/phone/StorageMonitor;->mReceiverRegistered:Z

    .line 115
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/StorageMonitor;->mListener:Lcom/android/phone/StorageMonitor$Listener;

    .line 116
    return-void
.end method
