.class public Lcom/android/voicemail/impl/mail/TempDirectory;
.super Ljava/lang/Object;
.source "TempDirectory.java"


# static fields
.field private static sTempDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTempDirectory()Ljava/io/File;
    .locals 2

    .line 33
    sget-object v0, Lcom/android/voicemail/impl/mail/TempDirectory;->sTempDirectory:Ljava/io/File;

    if-eqz v0, :cond_0

    return-object v0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TempDirectory not set.  If in a unit test, call Email.setTempDirectory(context) in setUp()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setTempDirectory(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/android/voicemail/impl/mail/TempDirectory;->sTempDirectory:Ljava/io/File;

    return-void
.end method
