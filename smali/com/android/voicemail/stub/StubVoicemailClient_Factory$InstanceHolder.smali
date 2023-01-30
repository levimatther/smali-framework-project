.class final Lcom/android/voicemail/stub/StubVoicemailClient_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "StubVoicemailClient_Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/stub/StubVoicemailClient_Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/voicemail/stub/StubVoicemailClient_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/android/voicemail/stub/StubVoicemailClient_Factory;

    invoke-direct {v0}, Lcom/android/voicemail/stub/StubVoicemailClient_Factory;-><init>()V

    sput-object v0, Lcom/android/voicemail/stub/StubVoicemailClient_Factory$InstanceHolder;->INSTANCE:Lcom/android/voicemail/stub/StubVoicemailClient_Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/voicemail/stub/StubVoicemailClient_Factory;
    .locals 1

    .line 28
    sget-object v0, Lcom/android/voicemail/stub/StubVoicemailClient_Factory$InstanceHolder;->INSTANCE:Lcom/android/voicemail/stub/StubVoicemailClient_Factory;

    return-object v0
.end method
