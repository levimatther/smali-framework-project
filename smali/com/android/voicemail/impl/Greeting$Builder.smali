.class public Lcom/android/voicemail/impl/Greeting$Builder;
.super Ljava/lang/Object;
.source "Greeting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/Greeting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private buildDefaultGreeting:Z

.field private buildDuration:Ljava/lang/Long;

.field private buildGreetName:Ljava/lang/String;

.field private buildMediaContent:[B

.field private buildNumber:Ljava/lang/String;

.field private buildSourceData:Ljava/lang/String;

.field private buildTimestamp:Ljava/lang/Long;

.field private buildUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/voicemail/impl/Greeting;
    .locals 11

    .line 162
    iget-object v0, p0, Lcom/android/voicemail/impl/Greeting$Builder;->buildTimestamp:Ljava/lang/Long;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/Greeting$Builder;->buildTimestamp:Ljava/lang/Long;

    .line 163
    iget-object v0, p0, Lcom/android/voicemail/impl/Greeting$Builder;->buildDuration:Ljava/lang/Long;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/Greeting$Builder;->buildDuration:Ljava/lang/Long;

    .line 164
    new-instance v0, Lcom/android/voicemail/impl/Greeting;

    iget-object v2, p0, Lcom/android/voicemail/impl/Greeting$Builder;->buildTimestamp:Ljava/lang/Long;

    iget-object v3, p0, Lcom/android/voicemail/impl/Greeting$Builder;->buildNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/voicemail/impl/Greeting$Builder;->buildDuration:Ljava/lang/Long;

    iget-object v5, p0, Lcom/android/voicemail/impl/Greeting$Builder;->buildSourceData:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/voicemail/impl/Greeting$Builder;->buildUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/voicemail/impl/Greeting$Builder;->buildGreetName:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/android/voicemail/impl/Greeting$Builder;->buildDefaultGreeting:Z

    iget-object v9, p0, Lcom/android/voicemail/impl/Greeting$Builder;->buildMediaContent:[B

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/voicemail/impl/Greeting;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z[BLcom/android/voicemail/impl/Greeting$1;)V

    return-object v0
.end method

.method public setBuildDefaultGreeting(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/android/voicemail/impl/Greeting$Builder;->buildDefaultGreeting:Z

    return-void
.end method

.method public setBuildDuration(Ljava/lang/Long;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/voicemail/impl/Greeting$Builder;->buildDuration:Ljava/lang/Long;

    return-void
.end method

.method public setBuildGreetName(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/voicemail/impl/Greeting$Builder;->buildGreetName:Ljava/lang/String;

    return-void
.end method

.method public setBuildMediaContent([B)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/voicemail/impl/Greeting$Builder;->buildMediaContent:[B

    return-void
.end method

.method public setBuildNumber(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/voicemail/impl/Greeting$Builder;->buildNumber:Ljava/lang/String;

    return-void
.end method

.method public setBuildSourceData(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/voicemail/impl/Greeting$Builder;->buildSourceData:Ljava/lang/String;

    return-void
.end method

.method public setBuildTimestamp(Ljava/lang/Long;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/voicemail/impl/Greeting$Builder;->buildTimestamp:Ljava/lang/Long;

    return-void
.end method

.method public setBuildUri(Landroid/net/Uri;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/voicemail/impl/Greeting$Builder;->buildUri:Landroid/net/Uri;

    return-void
.end method
