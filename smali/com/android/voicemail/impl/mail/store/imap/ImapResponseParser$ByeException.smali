.class public Lcom/android/voicemail/impl/mail/store/imap/ImapResponseParser$ByeException;
.super Ljava/io/IOException;
.source "ImapResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/mail/store/imap/ImapResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByeException"
.end annotation


# static fields
.field public static final MESSAGE:Ljava/lang/String; = "Received BYE"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Received BYE"

    .line 60
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
