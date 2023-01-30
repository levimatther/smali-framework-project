.class public Lcom/android/voicemail/impl/Voicemail$Builder;
.super Ljava/lang/Object;
.source "Voicemail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/Voicemail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBuilderDuration:Ljava/lang/Long;

.field private mBuilderHasContent:Z

.field private mBuilderId:Ljava/lang/Long;

.field private mBuilderIsRead:Ljava/lang/Boolean;

.field private mBuilderNumber:Ljava/lang/String;

.field private mBuilderPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private mBuilderSourceData:Ljava/lang/String;

.field private mBuilderSourcePackage:Ljava/lang/String;

.field private mBuilderTimestamp:Ljava/lang/Long;

.field private mBuilderTranscription:Ljava/lang/String;

.field private mBuilderUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/voicemail/impl/Voicemail$1;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/android/voicemail/impl/Voicemail$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/voicemail/impl/Voicemail;
    .locals 14

    .line 180
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    .line 181
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    move-wide v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    .line 182
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    .line 183
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    .line 184
    new-instance v0, Lcom/android/voicemail/impl/Voicemail;

    iget-object v2, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    iget-object v3, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iget-object v5, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    iget-object v6, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    iget-object v7, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderSourcePackage:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderSourceData:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderUri:Landroid/net/Uri;

    iget-object v10, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    iget-boolean v1, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderHasContent:Z

    .line 194
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-object v12, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderTranscription:Ljava/lang/String;

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/voicemail/impl/Voicemail;-><init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/android/voicemail/impl/Voicemail$1;)V

    return-object v0
.end method

.method public setDuration(J)Lcom/android/voicemail/impl/Voicemail$Builder;
    .locals 0

    .line 145
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public setHasContent(Z)Lcom/android/voicemail/impl/Voicemail$Builder;
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderHasContent:Z

    return-object p0
.end method

.method public setId(J)Lcom/android/voicemail/impl/Voicemail$Builder;
    .locals 0

    .line 140
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    return-object p0
.end method

.method public setIsRead(Z)Lcom/android/voicemail/impl/Voicemail$Builder;
    .locals 0

    .line 165
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/android/voicemail/impl/Voicemail$Builder;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderNumber:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/impl/Voicemail$Builder;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method public setSourceData(Ljava/lang/String;)Lcom/android/voicemail/impl/Voicemail$Builder;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderSourceData:Ljava/lang/String;

    return-object p0
.end method

.method public setSourcePackage(Ljava/lang/String;)Lcom/android/voicemail/impl/Voicemail$Builder;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderSourcePackage:Ljava/lang/String;

    return-object p0
.end method

.method public setTimestamp(J)Lcom/android/voicemail/impl/Voicemail$Builder;
    .locals 0

    .line 130
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public setTranscription(Ljava/lang/String;)Lcom/android/voicemail/impl/Voicemail$Builder;
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderTranscription:Ljava/lang/String;

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/android/voicemail/impl/Voicemail$Builder;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/voicemail/impl/Voicemail$Builder;->mBuilderUri:Landroid/net/Uri;

    return-object p0
.end method
