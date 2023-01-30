.class public abstract Lcom/android/dialer/enrichedcall/OutgoingCallComposerData$Builder;
.super Ljava/lang/Object;
.source "OutgoingCallComposerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/enrichedcall/OutgoingCallComposerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract autoBuild()Lcom/android/dialer/enrichedcall/OutgoingCallComposerData;
.end method

.method public build()Lcom/android/dialer/enrichedcall/OutgoingCallComposerData;
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/OutgoingCallComposerData$Builder;->autoBuild()Lcom/android/dialer/enrichedcall/OutgoingCallComposerData;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/OutgoingCallComposerData;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/OutgoingCallComposerData;->hasImageData()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    return-object v0
.end method

.method abstract setImageContentType(Ljava/lang/String;)Lcom/android/dialer/enrichedcall/OutgoingCallComposerData$Builder;
.end method

.method public setImageData(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/dialer/enrichedcall/OutgoingCallComposerData$Builder;
    .locals 0

    .line 70
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/dialer/enrichedcall/OutgoingCallComposerData$Builder;->setImageUri(Landroid/net/Uri;)Lcom/android/dialer/enrichedcall/OutgoingCallComposerData$Builder;

    .line 71
    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/dialer/enrichedcall/OutgoingCallComposerData$Builder;->setImageContentType(Ljava/lang/String;)Lcom/android/dialer/enrichedcall/OutgoingCallComposerData$Builder;

    return-object p0
.end method

.method abstract setImageUri(Landroid/net/Uri;)Lcom/android/dialer/enrichedcall/OutgoingCallComposerData$Builder;
.end method

.method public abstract setSubject(Ljava/lang/String;)Lcom/android/dialer/enrichedcall/OutgoingCallComposerData$Builder;
.end method
