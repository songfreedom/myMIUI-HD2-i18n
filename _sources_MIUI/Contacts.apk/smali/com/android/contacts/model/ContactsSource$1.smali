.class final Lcom/android/contacts/model/ContactsSource$1;
.super Ljava/lang/Object;
.source "ContactsSource.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/ContactsSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/contacts/model/ContactsSource$DataKind;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/ContactsSource$DataKind;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 150
    iget v0, p1, Lcom/android/contacts/model/ContactsSource$DataKind;->weight:I

    iget v1, p2, Lcom/android/contacts/model/ContactsSource$DataKind;->weight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    check-cast p1, Lcom/android/contacts/model/ContactsSource$DataKind;

    .end local p1
    check-cast p2, Lcom/android/contacts/model/ContactsSource$DataKind;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/ContactsSource$1;->compare(Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/ContactsSource$DataKind;)I

    move-result v0

    return v0
.end method
