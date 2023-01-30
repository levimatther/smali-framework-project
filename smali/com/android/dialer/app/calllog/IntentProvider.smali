.class public abstract Lcom/android/dialer/app/calllog/IntentProvider;
.super Ljava/lang/Object;
.source "IntentProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/android/dialer/app/calllog/IntentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/app/calllog/IntentProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddContactIntentProvider(Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Lcom/android/dialer/app/calllog/IntentProvider;
    .locals 7

    .line 132
    new-instance v6, Lcom/android/dialer/app/calllog/IntentProvider$7;

    move-object v0, v6

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/app/calllog/IntentProvider$7;-><init>(Landroid/net/Uri;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-object v6
.end method

.method public static getCallDetailIntentProvider(Lcom/android/dialer/calldetails/CallDetailsEntries;Lcom/android/dialer/dialercontact/DialerContact;Z)Lcom/android/dialer/app/calllog/IntentProvider;
    .locals 1

    .line 116
    new-instance v0, Lcom/android/dialer/app/calllog/IntentProvider$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/dialer/app/calllog/IntentProvider$6;-><init>(Lcom/android/dialer/calldetails/CallDetailsEntries;Lcom/android/dialer/dialercontact/DialerContact;Z)V

    return-object v0
.end method

.method public static getLightbringerIntentProvider(Ljava/lang/String;)Lcom/android/dialer/app/calllog/IntentProvider;
    .locals 1

    .line 80
    new-instance v0, Lcom/android/dialer/app/calllog/IntentProvider$3;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/calllog/IntentProvider$3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getReturnCallIntentProvider(Ljava/lang/String;)Lcom/android/dialer/app/calllog/IntentProvider;
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-static {p0, v0}, Lcom/android/dialer/app/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/app/calllog/IntentProvider;

    move-result-object p0

    return-object p0
.end method

.method public static getReturnCallIntentProvider(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/app/calllog/IntentProvider;
    .locals 1

    .line 52
    new-instance v0, Lcom/android/dialer/app/calllog/IntentProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/app/calllog/IntentProvider$1;-><init>(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V

    return-object v0
.end method

.method public static getReturnVideoCallIntentProvider(Ljava/lang/String;)Lcom/android/dialer/app/calllog/IntentProvider;
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-static {p0, v0}, Lcom/android/dialer/app/calllog/IntentProvider;->getReturnVideoCallIntentProvider(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/app/calllog/IntentProvider;

    move-result-object p0

    return-object p0
.end method

.method public static getReturnVideoCallIntentProvider(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/app/calllog/IntentProvider;
    .locals 1

    .line 68
    new-instance v0, Lcom/android/dialer/app/calllog/IntentProvider$2;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/app/calllog/IntentProvider$2;-><init>(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V

    return-object v0
.end method

.method public static getReturnVoicemailCallIntentProvider()Lcom/android/dialer/app/calllog/IntentProvider;
    .locals 1

    .line 89
    new-instance v0, Lcom/android/dialer/app/calllog/IntentProvider$4;

    invoke-direct {v0}, Lcom/android/dialer/app/calllog/IntentProvider$4;-><init>()V

    return-object v0
.end method

.method public static getSendSmsIntentProvider(Ljava/lang/String;)Lcom/android/dialer/app/calllog/IntentProvider;
    .locals 1

    .line 99
    new-instance v0, Lcom/android/dialer/app/calllog/IntentProvider$5;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/calllog/IntentProvider$5;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract getIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method
