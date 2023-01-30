.class public Lcom/android/voicemail/impl/sync/OmtpVvmSyncService$TranscriptionFetchedCallback;
.super Ljava/lang/Object;
.source "OmtpVvmSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranscriptionFetchedCallback"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVoicemail:Lcom/android/voicemail/impl/Voicemail;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/voicemail/impl/Voicemail;)V
    .locals 0

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput-object p1, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService$TranscriptionFetchedCallback;->mContext:Landroid/content/Context;

    .line 496
    iput-object p2, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService$TranscriptionFetchedCallback;->mVoicemail:Lcom/android/voicemail/impl/Voicemail;

    return-void
.end method


# virtual methods
.method public setVoicemailTranscription(Ljava/lang/String;)V
    .locals 2

    .line 500
    new-instance v0, Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;

    iget-object v1, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService$TranscriptionFetchedCallback;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;-><init>(Landroid/content/Context;)V

    .line 501
    iget-object v1, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService$TranscriptionFetchedCallback;->mVoicemail:Lcom/android/voicemail/impl/Voicemail;

    invoke-virtual {v0, v1, p1}, Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;->updateWithTranscription(Lcom/android/voicemail/impl/Voicemail;Ljava/lang/String;)V

    return-void
.end method
