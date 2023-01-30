.class public abstract Lcom/android/dialer/enrichedcall/OutgoingCallComposerData;
.super Ljava/lang/Object;
.source "OutgoingCallComposerData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/enrichedcall/OutgoingCallComposerData$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/android/dialer/enrichedcall/OutgoingCallComposerData$Builder;
    .locals 1

    .line 48
    new-instance v0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData$Builder;

    invoke-direct {v0}, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getImageContentType()Ljava/lang/String;
.end method

.method public abstract getImageUri()Landroid/net/Uri;
.end method

.method public abstract getSubject()Ljava/lang/String;
.end method

.method public hasImageData()Z
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/OutgoingCallComposerData;->getImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/OutgoingCallComposerData;->getImageContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
