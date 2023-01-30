.class public final Lcom/android/dialer/dialercontact/DialerContact$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DialerContact.java"

# interfaces
.implements Lcom/android/dialer/dialercontact/DialerContactOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialercontact/DialerContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/dialer/dialercontact/DialerContact;",
        "Lcom/android/dialer/dialercontact/DialerContact$Builder;",
        ">;",
        "Lcom/android/dialer/dialercontact/DialerContactOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 638
    invoke-static {}, Lcom/android/dialer/dialercontact/DialerContact;->access$000()Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/dialercontact/DialerContact$1;)V
    .locals 0

    .line 631
    invoke-direct {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearContactType()Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 993
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 994
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0}, Lcom/android/dialer/dialercontact/DialerContact;->access$2200(Lcom/android/dialer/dialercontact/DialerContact;)V

    return-object p0
.end method

.method public clearContactUri()Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 757
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 758
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0}, Lcom/android/dialer/dialercontact/DialerContact;->access$700(Lcom/android/dialer/dialercontact/DialerContact;)V

    return-object p0
.end method

.method public clearDisplayNumber()Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 904
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 905
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0}, Lcom/android/dialer/dialercontact/DialerContact;->access$1600(Lcom/android/dialer/dialercontact/DialerContact;)V

    return-object p0
.end method

.method public clearNameOrNumber()Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 806
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 807
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0}, Lcom/android/dialer/dialercontact/DialerContact;->access$1000(Lcom/android/dialer/dialercontact/DialerContact;)V

    return-object p0
.end method

.method public clearNumber()Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 855
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 856
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0}, Lcom/android/dialer/dialercontact/DialerContact;->access$1300(Lcom/android/dialer/dialercontact/DialerContact;)V

    return-object p0
.end method

.method public clearNumberLabel()Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 953
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 954
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0}, Lcom/android/dialer/dialercontact/DialerContact;->access$1900(Lcom/android/dialer/dialercontact/DialerContact;)V

    return-object p0
.end method

.method public clearPhotoId()Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 668
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 669
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0}, Lcom/android/dialer/dialercontact/DialerContact;->access$200(Lcom/android/dialer/dialercontact/DialerContact;)V

    return-object p0
.end method

.method public clearPhotoUri()Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 708
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 709
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0}, Lcom/android/dialer/dialercontact/DialerContact;->access$400(Lcom/android/dialer/dialercontact/DialerContact;)V

    return-object p0
.end method

.method public clearSimDetails()Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 1040
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 1041
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0}, Lcom/android/dialer/dialercontact/DialerContact;->access$2600(Lcom/android/dialer/dialercontact/DialerContact;)V

    return-object p0
.end method

.method public getContactType()I
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getContactType()I

    move-result v0

    return v0
.end method

.method public getContactUri()Ljava/lang/String;
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getContactUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactUriBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getContactUriBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNumber()Ljava/lang/String;
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getDisplayNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getDisplayNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNameOrNumber()Ljava/lang/String;
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getNameOrNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameOrNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getNameOrNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumberLabel()Ljava/lang/String;
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getNumberLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getNumberLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoId()J
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getPhotoId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhotoUri()Ljava/lang/String;
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getPhotoUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoUriBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getPhotoUriBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSimDetails()Lcom/android/dialer/dialercontact/SimDetails;
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getSimDetails()Lcom/android/dialer/dialercontact/SimDetails;

    move-result-object v0

    return-object v0
.end method

.method public hasContactType()Z
    .locals 1

    .line 972
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->hasContactType()Z

    move-result v0

    return v0
.end method

.method public hasContactUri()Z
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->hasContactUri()Z

    move-result v0

    return v0
.end method

.method public hasDisplayNumber()Z
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->hasDisplayNumber()Z

    move-result v0

    return v0
.end method

.method public hasNameOrNumber()Z
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->hasNameOrNumber()Z

    move-result v0

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->hasNumber()Z

    move-result v0

    return v0
.end method

.method public hasNumberLabel()Z
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->hasNumberLabel()Z

    move-result v0

    return v0
.end method

.method public hasPhotoId()Z
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->hasPhotoId()Z

    move-result v0

    return v0
.end method

.method public hasPhotoUri()Z
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->hasPhotoUri()Z

    move-result v0

    return v0
.end method

.method public hasSimDetails()Z
    .locals 1

    .line 1003
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->hasSimDetails()Z

    move-result v0

    return v0
.end method

.method public mergeSimDetails(Lcom/android/dialer/dialercontact/SimDetails;)Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 1033
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 1034
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->access$2500(Lcom/android/dialer/dialercontact/DialerContact;Lcom/android/dialer/dialercontact/SimDetails;)V

    return-object p0
.end method

.method public setContactType(I)Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 985
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 986
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->access$2100(Lcom/android/dialer/dialercontact/DialerContact;I)V

    return-object p0
.end method

.method public setContactUri(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 749
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 750
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->access$600(Lcom/android/dialer/dialercontact/DialerContact;Ljava/lang/String;)V

    return-object p0
.end method

.method public setContactUriBytes(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 766
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 767
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->access$800(Lcom/android/dialer/dialercontact/DialerContact;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDisplayNumber(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 896
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 897
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->access$1500(Lcom/android/dialer/dialercontact/DialerContact;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDisplayNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 913
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 914
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->access$1700(Lcom/android/dialer/dialercontact/DialerContact;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNameOrNumber(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 798
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 799
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->access$900(Lcom/android/dialer/dialercontact/DialerContact;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameOrNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 815
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 816
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->access$1100(Lcom/android/dialer/dialercontact/DialerContact;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 847
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 848
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->access$1200(Lcom/android/dialer/dialercontact/DialerContact;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 864
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 865
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->access$1400(Lcom/android/dialer/dialercontact/DialerContact;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNumberLabel(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 945
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 946
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->access$1800(Lcom/android/dialer/dialercontact/DialerContact;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNumberLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 962
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 963
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->access$2000(Lcom/android/dialer/dialercontact/DialerContact;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPhotoId(J)Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 660
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 661
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/dialercontact/DialerContact;->access$100(Lcom/android/dialer/dialercontact/DialerContact;J)V

    return-object p0
.end method

.method public setPhotoUri(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 700
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 701
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->access$300(Lcom/android/dialer/dialercontact/DialerContact;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPhotoUriBytes(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 717
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 718
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->access$500(Lcom/android/dialer/dialercontact/DialerContact;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSimDetails(Lcom/android/dialer/dialercontact/SimDetails$Builder;)Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 1025
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 1026
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->access$2400(Lcom/android/dialer/dialercontact/DialerContact;Lcom/android/dialer/dialercontact/SimDetails$Builder;)V

    return-object p0
.end method

.method public setSimDetails(Lcom/android/dialer/dialercontact/SimDetails;)Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 1016
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->copyOnWrite()V

    .line 1017
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->access$2300(Lcom/android/dialer/dialercontact/DialerContact;Lcom/android/dialer/dialercontact/SimDetails;)V

    return-object p0
.end method
