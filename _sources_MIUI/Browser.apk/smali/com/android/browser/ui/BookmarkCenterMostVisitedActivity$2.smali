.class Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity$2;
.super Ljava/lang/Object;
.source "BookmarkCenterMostVisitedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;

    iget-object v1, p0, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;

    invoke-virtual {v1}, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/browser/controller/BookmarkHistory;->clearHistory(Landroid/content/Context;Landroid/content/ContentResolver;)V

    .line 80
    invoke-static {}, Lcom/android/browser/controller/TabController;->getInstance()Lcom/android/browser/controller/TabController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/TabController;->setForceInitHistoryAdapter(Z)V

    .line 81
    return-void
.end method
