.class Lcom/android/gallery/view/ImageViewTouchBase$2;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/view/ImageViewTouchBase;->zoomTo(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/view/ImageViewTouchBase;

.field final synthetic val$centerX:F

.field final synthetic val$centerY:F

.field final synthetic val$durationMs:F

.field final synthetic val$incrementPerMs:F

.field final synthetic val$oldScale:F

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/android/gallery/view/ImageViewTouchBase;FJFFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/gallery/view/ImageViewTouchBase$2;->this$0:Lcom/android/gallery/view/ImageViewTouchBase;

    iput p2, p0, Lcom/android/gallery/view/ImageViewTouchBase$2;->val$durationMs:F

    iput-wide p3, p0, Lcom/android/gallery/view/ImageViewTouchBase$2;->val$startTime:J

    iput p5, p0, Lcom/android/gallery/view/ImageViewTouchBase$2;->val$oldScale:F

    iput p6, p0, Lcom/android/gallery/view/ImageViewTouchBase$2;->val$incrementPerMs:F

    iput p7, p0, Lcom/android/gallery/view/ImageViewTouchBase$2;->val$centerX:F

    iput p8, p0, Lcom/android/gallery/view/ImageViewTouchBase$2;->val$centerY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 297
    .local v1, now:J
    iget v4, p0, Lcom/android/gallery/view/ImageViewTouchBase$2;->val$durationMs:F

    iget-wide v5, p0, Lcom/android/gallery/view/ImageViewTouchBase$2;->val$startTime:J

    sub-long v5, v1, v5

    long-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 298
    .local v0, currentMs:F
    iget v4, p0, Lcom/android/gallery/view/ImageViewTouchBase$2;->val$oldScale:F

    iget v5, p0, Lcom/android/gallery/view/ImageViewTouchBase$2;->val$incrementPerMs:F

    mul-float/2addr v5, v0

    add-float v3, v4, v5

    .line 299
    .local v3, target:F
    iget-object v4, p0, Lcom/android/gallery/view/ImageViewTouchBase$2;->this$0:Lcom/android/gallery/view/ImageViewTouchBase;

    iget v5, p0, Lcom/android/gallery/view/ImageViewTouchBase$2;->val$centerX:F

    iget v6, p0, Lcom/android/gallery/view/ImageViewTouchBase$2;->val$centerY:F

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/gallery/view/ImageViewTouchBase;->zoomTo(FFF)V

    .line 301
    iget v4, p0, Lcom/android/gallery/view/ImageViewTouchBase$2;->val$durationMs:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    .line 302
    iget-object v4, p0, Lcom/android/gallery/view/ImageViewTouchBase$2;->this$0:Lcom/android/gallery/view/ImageViewTouchBase;

    iget-object v4, v4, Lcom/android/gallery/view/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    :cond_0
    return-void
.end method