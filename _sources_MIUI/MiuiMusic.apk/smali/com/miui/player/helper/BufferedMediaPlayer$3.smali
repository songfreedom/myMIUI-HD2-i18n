.class Lcom/miui/player/helper/BufferedMediaPlayer$3;
.super Ljava/lang/Object;
.source "BufferedMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/helper/BufferedMediaPlayer;->runOnBufferedPositionChanged(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

.field final synthetic val$bufferedPer:F

.field final synthetic val$l:Lcom/miui/player/helper/BufferedMediaPlayer$OnBufferedPositionChangedListener;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/BufferedMediaPlayer;Lcom/miui/player/helper/BufferedMediaPlayer$OnBufferedPositionChangedListener;F)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 815
    iput-object p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$3;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    iput-object p2, p0, Lcom/miui/player/helper/BufferedMediaPlayer$3;->val$l:Lcom/miui/player/helper/BufferedMediaPlayer$OnBufferedPositionChangedListener;

    iput p3, p0, Lcom/miui/player/helper/BufferedMediaPlayer$3;->val$bufferedPer:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$3;->val$l:Lcom/miui/player/helper/BufferedMediaPlayer$OnBufferedPositionChangedListener;

    iget v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$3;->val$bufferedPer:F

    invoke-interface {v0, v1}, Lcom/miui/player/helper/BufferedMediaPlayer$OnBufferedPositionChangedListener;->onBufferedPositionChanged(F)V

    .line 820
    return-void
.end method
