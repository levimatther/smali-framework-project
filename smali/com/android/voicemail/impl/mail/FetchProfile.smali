.class public Lcom/android/voicemail/impl/mail/FetchProfile;
.super Ljava/util/ArrayList;
.source "FetchProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/mail/FetchProfile$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/android/voicemail/impl/mail/Fetchable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstPart()Lcom/android/voicemail/impl/mail/Part;
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/FetchProfile;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/voicemail/impl/mail/Fetchable;

    .line 73
    instance-of v2, v1, Lcom/android/voicemail/impl/mail/Part;

    if-eqz v2, :cond_0

    .line 74
    check-cast v1, Lcom/android/voicemail/impl/mail/Part;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
