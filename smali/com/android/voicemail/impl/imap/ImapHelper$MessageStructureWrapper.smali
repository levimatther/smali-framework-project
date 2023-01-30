.class public Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;
.super Ljava/lang/Object;
.source "ImapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/imap/ImapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageStructureWrapper"
.end annotation


# instance fields
.field public messageStructure:Lcom/android/voicemail/impl/mail/Message;

.field public transcriptionBodyPart:Lcom/android/voicemail/impl/mail/BodyPart;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
