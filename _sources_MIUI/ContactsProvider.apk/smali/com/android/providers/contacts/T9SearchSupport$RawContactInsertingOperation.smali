.class Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;
.super Lcom/android/providers/contacts/T9SearchSupport$Operation;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RawContactInsertingOperation"
.end annotation


# instance fields
.field public rawContactIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/providers/contacts/T9SearchSupport;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/T9SearchSupport;)V
    .locals 1
    .parameter

    .prologue
    .line 2744
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    .line 2745
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/T9SearchSupport$Operation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;I)V

    .line 2742
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;->rawContactIds:Ljava/util/HashSet;

    .line 2746
    return-void
.end method


# virtual methods
.method add(JLjava/lang/Object;)V
    .locals 2
    .parameter "rawContactId"
    .parameter "info"

    .prologue
    .line 2764
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;->rawContactIds:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2765
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;->rawContactIds:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2767
    :cond_0
    return-void
.end method

.method apply()V
    .locals 5

    .prologue
    .line 2754
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;->rawContactIds:Ljava/util/HashSet;

    sget-object v3, Lcom/android/providers/contacts/T9SearchSupport$IdType;->RawContactId:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->insertT9SearchItem(Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    invoke-static {v1, v2, v3}, Lcom/android/providers/contacts/T9SearchSupport;->access$1100(Lcom/android/providers/contacts/T9SearchSupport;Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2760
    return-void

    .line 2755
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2756
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "T9SearchSupport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to insert raw contacts "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;->rawContactIds:Ljava/util/HashSet;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2758
    throw v0
.end method
