.class abstract Lcom/android/dialer/shortcuts/DialerShortcut$Builder;
.super Ljava/lang/Object;
.source "DialerShortcut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/shortcuts/DialerShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Builder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract build()Lcom/android/dialer/shortcuts/DialerShortcut;
.end method

.method abstract setContactId(J)Lcom/android/dialer/shortcuts/DialerShortcut$Builder;
.end method

.method abstract setDisplayName(Ljava/lang/String;)Lcom/android/dialer/shortcuts/DialerShortcut$Builder;
.end method

.method abstract setLookupKey(Ljava/lang/String;)Lcom/android/dialer/shortcuts/DialerShortcut$Builder;
.end method

.method abstract setRank(I)Lcom/android/dialer/shortcuts/DialerShortcut$Builder;
.end method
