.class public final Lcom/miui/milk/model/CalllogProtos$Call$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CalllogProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/CalllogProtos$Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/CalllogProtos$Call;",
        "Lcom/miui/milk/model/CalllogProtos$Call$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private actionType_:Lcom/miui/milk/model/CalllogProtos$ActionType;

.field private bitField0_:I

.field private date_:Ljava/lang/Object;

.field private duration_:J

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private new_:I

.field private number_:Ljava/lang/Object;

.field private type_:Lcom/miui/milk/model/CalllogProtos$Call$CallType;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 498
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 700
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->guid_:Ljava/lang/Object;

    .line 736
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->luid_:Ljava/lang/Object;

    .line 772
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->number_:Ljava/lang/Object;

    .line 808
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->date_:Ljava/lang/Object;

    .line 865
    sget-object v0, Lcom/miui/milk/model/CalllogProtos$Call$CallType;->MISSED:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->type_:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    .line 910
    sget-object v0, Lcom/miui/milk/model/CalllogProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CalllogProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->actionType_:Lcom/miui/milk/model/CalllogProtos$ActionType;

    .line 499
    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->maybeForceBuilderInitialization()V

    .line 500
    return-void
.end method

.method static synthetic access$100()Lcom/miui/milk/model/CalllogProtos$Call$Builder;
    .locals 1

    .prologue
    .line 493
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->create()Lcom/miui/milk/model/CalllogProtos$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/CalllogProtos$Call$Builder;
    .locals 1

    .prologue
    .line 505
    new-instance v0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 503
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->buildPartial()Lcom/miui/milk/model/CalllogProtos$Call;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/CalllogProtos$Call;
    .locals 5

    .prologue
    .line 556
    new-instance v1, Lcom/miui/milk/model/CalllogProtos$Call;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/CalllogProtos$Call;-><init>(Lcom/miui/milk/model/CalllogProtos$Call$Builder;Lcom/miui/milk/model/CalllogProtos$1;)V

    .line 557
    .local v1, result:Lcom/miui/milk/model/CalllogProtos$Call;
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    .line 558
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 559
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 560
    or-int/lit8 v2, v2, 0x1

    .line 562
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->guid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/CalllogProtos$Call;->guid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/CalllogProtos$Call;->access$302(Lcom/miui/milk/model/CalllogProtos$Call;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 564
    or-int/lit8 v2, v2, 0x2

    .line 566
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->luid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/CalllogProtos$Call;->luid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/CalllogProtos$Call;->access$402(Lcom/miui/milk/model/CalllogProtos$Call;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 568
    or-int/lit8 v2, v2, 0x4

    .line 570
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->number_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/CalllogProtos$Call;->number_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/CalllogProtos$Call;->access$502(Lcom/miui/milk/model/CalllogProtos$Call;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 572
    or-int/lit8 v2, v2, 0x8

    .line 574
    :cond_3
    iget-object v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->date_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/CalllogProtos$Call;->date_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/CalllogProtos$Call;->access$602(Lcom/miui/milk/model/CalllogProtos$Call;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 576
    or-int/lit8 v2, v2, 0x10

    .line 578
    :cond_4
    iget-wide v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->duration_:J

    #setter for: Lcom/miui/milk/model/CalllogProtos$Call;->duration_:J
    invoke-static {v1, v3, v4}, Lcom/miui/milk/model/CalllogProtos$Call;->access$702(Lcom/miui/milk/model/CalllogProtos$Call;J)J

    .line 579
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 580
    or-int/lit8 v2, v2, 0x20

    .line 582
    :cond_5
    iget-object v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->type_:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    #setter for: Lcom/miui/milk/model/CalllogProtos$Call;->type_:Lcom/miui/milk/model/CalllogProtos$Call$CallType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/CalllogProtos$Call;->access$802(Lcom/miui/milk/model/CalllogProtos$Call;Lcom/miui/milk/model/CalllogProtos$Call$CallType;)Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    .line 583
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 584
    or-int/lit8 v2, v2, 0x40

    .line 586
    :cond_6
    iget v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->new_:I

    #setter for: Lcom/miui/milk/model/CalllogProtos$Call;->new_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/CalllogProtos$Call;->access$902(Lcom/miui/milk/model/CalllogProtos$Call;I)I

    .line 587
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 588
    or-int/lit16 v2, v2, 0x80

    .line 590
    :cond_7
    iget-object v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->actionType_:Lcom/miui/milk/model/CalllogProtos$ActionType;

    #setter for: Lcom/miui/milk/model/CalllogProtos$Call;->actionType_:Lcom/miui/milk/model/CalllogProtos$ActionType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/CalllogProtos$Call;->access$1002(Lcom/miui/milk/model/CalllogProtos$Call;Lcom/miui/milk/model/CalllogProtos$ActionType;)Lcom/miui/milk/model/CalllogProtos$ActionType;

    .line 591
    #setter for: Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/CalllogProtos$Call;->access$1102(Lcom/miui/milk/model/CalllogProtos$Call;I)I

    .line 592
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->clone()Lcom/miui/milk/model/CalllogProtos$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->clone()Lcom/miui/milk/model/CalllogProtos$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/CalllogProtos$Call$Builder;
    .locals 2

    .prologue
    .line 530
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->create()Lcom/miui/milk/model/CalllogProtos$Call$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->buildPartial()Lcom/miui/milk/model/CalllogProtos$Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->mergeFrom(Lcom/miui/milk/model/CalllogProtos$Call;)Lcom/miui/milk/model/CalllogProtos$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->clone()Lcom/miui/milk/model/CalllogProtos$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/CalllogProtos$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/CalllogProtos$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/CalllogProtos$Call$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 634
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 639
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 641
    :sswitch_0
    return-object p0

    .line 646
    :sswitch_1
    iget v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    .line 647
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->guid_:Ljava/lang/Object;

    goto :goto_0

    .line 651
    :sswitch_2
    iget v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    .line 652
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->luid_:Ljava/lang/Object;

    goto :goto_0

    .line 656
    :sswitch_3
    iget v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    .line 657
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->number_:Ljava/lang/Object;

    goto :goto_0

    .line 661
    :sswitch_4
    iget v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    .line 662
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->date_:Ljava/lang/Object;

    goto :goto_0

    .line 666
    :sswitch_5
    iget v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    .line 667
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->duration_:J

    goto :goto_0

    .line 671
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 672
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CalllogProtos$Call$CallType;->valueOf(I)Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    move-result-object v2

    .line 673
    .local v2, value:Lcom/miui/milk/model/CalllogProtos$Call$CallType;
    if-eqz v2, :cond_0

    .line 674
    iget v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    .line 675
    iput-object v2, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->type_:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    goto :goto_0

    .line 680
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/miui/milk/model/CalllogProtos$Call$CallType;
    :sswitch_7
    iget v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    .line 681
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->new_:I

    goto :goto_0

    .line 685
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 686
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CalllogProtos$ActionType;->valueOf(I)Lcom/miui/milk/model/CalllogProtos$ActionType;

    move-result-object v2

    .line 687
    .local v2, value:Lcom/miui/milk/model/CalllogProtos$ActionType;
    if-eqz v2, :cond_0

    .line 688
    iget v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    .line 689
    iput-object v2, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->actionType_:Lcom/miui/milk/model/CalllogProtos$ActionType;

    goto/16 :goto_0

    .line 634
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0xa0 -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/CalllogProtos$Call;)Lcom/miui/milk/model/CalllogProtos$Call$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 596
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos$Call;->getDefaultInstance()Lcom/miui/milk/model/CalllogProtos$Call;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-object p0

    .line 597
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos$Call;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos$Call;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/CalllogProtos$Call$Builder;

    .line 600
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos$Call;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 601
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos$Call;->getLuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/CalllogProtos$Call$Builder;

    .line 603
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos$Call;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 604
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos$Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->setNumber(Ljava/lang/String;)Lcom/miui/milk/model/CalllogProtos$Call$Builder;

    .line 606
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos$Call;->hasDate()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 607
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos$Call;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->setDate(Ljava/lang/String;)Lcom/miui/milk/model/CalllogProtos$Call$Builder;

    .line 609
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos$Call;->hasDuration()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 610
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos$Call;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->setDuration(J)Lcom/miui/milk/model/CalllogProtos$Call$Builder;

    .line 612
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos$Call;->hasType()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 613
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos$Call;->getType()Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->setType(Lcom/miui/milk/model/CalllogProtos$Call$CallType;)Lcom/miui/milk/model/CalllogProtos$Call$Builder;

    .line 615
    :cond_7
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos$Call;->hasNew()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 616
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos$Call;->getNew()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->setNew(I)Lcom/miui/milk/model/CalllogProtos$Call$Builder;

    .line 618
    :cond_8
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos$Call;->hasActionType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos$Call;->getActionType()Lcom/miui/milk/model/CalllogProtos$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->setActionType(Lcom/miui/milk/model/CalllogProtos$ActionType;)Lcom/miui/milk/model/CalllogProtos$Call$Builder;

    goto :goto_0
.end method

.method public setActionType(Lcom/miui/milk/model/CalllogProtos$ActionType;)Lcom/miui/milk/model/CalllogProtos$Call$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 918
    if-nez p1, :cond_0

    .line 919
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 921
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    .line 922
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->actionType_:Lcom/miui/milk/model/CalllogProtos$ActionType;

    .line 924
    return-object p0
.end method

.method public setDate(Ljava/lang/String;)Lcom/miui/milk/model/CalllogProtos$Call$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 823
    if-nez p1, :cond_0

    .line 824
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 826
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    .line 827
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->date_:Ljava/lang/Object;

    .line 829
    return-object p0
.end method

.method public setDuration(J)Lcom/miui/milk/model/CalllogProtos$Call$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 852
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    .line 853
    iput-wide p1, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->duration_:J

    .line 855
    return-object p0
.end method

.method public setGuid(Ljava/lang/String;)Lcom/miui/milk/model/CalllogProtos$Call$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 715
    if-nez p1, :cond_0

    .line 716
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 718
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    .line 719
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->guid_:Ljava/lang/Object;

    .line 721
    return-object p0
.end method

.method public setLuid(Ljava/lang/String;)Lcom/miui/milk/model/CalllogProtos$Call$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 751
    if-nez p1, :cond_0

    .line 752
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 754
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    .line 755
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->luid_:Ljava/lang/Object;

    .line 757
    return-object p0
.end method

.method public setNew(I)Lcom/miui/milk/model/CalllogProtos$Call$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 897
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    .line 898
    iput p1, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->new_:I

    .line 900
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/miui/milk/model/CalllogProtos$Call$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 787
    if-nez p1, :cond_0

    .line 788
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 790
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    .line 791
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->number_:Ljava/lang/Object;

    .line 793
    return-object p0
.end method

.method public setType(Lcom/miui/milk/model/CalllogProtos$Call$CallType;)Lcom/miui/milk/model/CalllogProtos$Call$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 873
    if-nez p1, :cond_0

    .line 874
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 876
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->bitField0_:I

    .line 877
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->type_:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    .line 879
    return-object p0
.end method
