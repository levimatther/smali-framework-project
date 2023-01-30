.class public final Lcom/android/dialer/app/contactinfo/ContactInfoRequest;
.super Ljava/lang/Object;
.source "ContactInfoRequest.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/contactinfo/ContactInfoRequest$TYPE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/dialer/app/contactinfo/ContactInfoRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final NEXT_SEQUENCE_NUMBER:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final TYPE_LOCAL:I = 0x0

.field public static final TYPE_LOCAL_AND_REMOTE:I = 0x1

.field public static final TYPE_REMOTE:I = 0x2


# instance fields
.field public final callLogInfo:Lcom/android/dialer/phonenumbercache/ContactInfo;

.field public final countryIso:Ljava/lang/String;

.field public final isConf:Z

.field public final number:Ljava/lang/String;

.field public final postDialString:Ljava/lang/String;

.field private final sequenceNumber:J

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->NEXT_SEQUENCE_NUMBER:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/phonenumbercache/ContactInfo;I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 68
    invoke-direct/range {v0 .. v6}, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/phonenumbercache/ContactInfo;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/phonenumbercache/ContactInfo;IZ)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-object v0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->NEXT_SEQUENCE_NUMBER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->sequenceNumber:J

    .line 74
    iput-object p1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->number:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->postDialString:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->countryIso:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->callLogInfo:Lcom/android/dialer/phonenumbercache/ContactInfo;

    .line 78
    iput p5, p0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->type:I

    .line 79
    iput-boolean p6, p0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->isConf:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dialer/app/contactinfo/ContactInfoRequest;)I
    .locals 7

    .line 131
    invoke-virtual {p0}, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->isLocalRequest()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->isLocalRequest()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->isLocalRequest()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->isLocalRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 138
    :cond_1
    iget-wide v3, p0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->sequenceNumber:J

    iget-wide v5, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->sequenceNumber:J

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->compareTo(Lcom/android/dialer/app/contactinfo/ContactInfoRequest;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 90
    :cond_1
    instance-of v2, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;

    if-nez v2, :cond_2

    return v1

    .line 94
    :cond_2
    check-cast p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;

    .line 96
    iget-object v2, p0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->number:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 100
    :cond_3
    iget-object v2, p0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->postDialString:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->postDialString:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 104
    :cond_4
    iget-object v2, p0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->countryIso:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->countryIso:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 107
    :cond_5
    iget-object v2, p0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->callLogInfo:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v3, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->callLogInfo:Lcom/android/dialer/phonenumbercache/ContactInfo;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 111
    :cond_6
    iget v2, p0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->type:I

    iget p1, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->type:I

    if-eq v2, p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 124
    iget-wide v1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->sequenceNumber:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->number:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->postDialString:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->countryIso:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->callLogInfo:Lcom/android/dialer/phonenumbercache/ContactInfo;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->type:I

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->isConf:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 124
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLocalRequest()Z
    .locals 2

    .line 119
    iget v0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->type:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
