.class Lcom/android/voicemail/impl/mail/store/ImapStore$ImapException;
.super Lcom/android/voicemail/impl/mail/MessagingException;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImapException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mAlertText:Ljava/lang/String;

.field private final mResponseCode:Ljava/lang/String;

.field private final mStatus:Ljava/lang/String;

.field private final mStatusMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 146
    iput-object p2, p0, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapException;->mStatus:Ljava/lang/String;

    .line 147
    iput-object p3, p0, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapException;->mStatusMessage:Ljava/lang/String;

    .line 148
    iput-object p4, p0, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    .line 149
    iput-object p5, p0, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapException;->mResponseCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlertText()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapException;->mResponseCode:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapException;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapException;->mStatusMessage:Ljava/lang/String;

    return-object v0
.end method
