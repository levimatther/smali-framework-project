.class final Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData$Builder;
.super Lcom/android/dialer/enrichedcall/OutgoingCallComposerData$Builder;
.source "AutoValue_OutgoingCallComposerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private imageContentType:Ljava/lang/String;

.field private imageUri:Landroid/net/Uri;

.field private subject:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/dialer/enrichedcall/OutgoingCallComposerData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method autoBuild()Lcom/android/dialer/enrichedcall/OutgoingCallComposerData;
    .locals 5

    .line 101
    new-instance v0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData;

    iget-object v1, p0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData$Builder;->subject:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData$Builder;->imageUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData$Builder;->imageContentType:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData$1;)V

    return-object v0
.end method

.method setImageContentType(Ljava/lang/String;)Lcom/android/dialer/enrichedcall/OutgoingCallComposerData$Builder;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData$Builder;->imageContentType:Ljava/lang/String;

    return-object p0
.end method

.method setImageUri(Landroid/net/Uri;)Lcom/android/dialer/enrichedcall/OutgoingCallComposerData$Builder;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData$Builder;->imageUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lcom/android/dialer/enrichedcall/OutgoingCallComposerData$Builder;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData$Builder;->subject:Ljava/lang/String;

    return-object p0
.end method
