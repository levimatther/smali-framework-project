.class public Lcom/android/incallui/ringtone/ToneGeneratorFactory;
.super Ljava/lang/Object;
.source "ToneGeneratorFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInCallToneGenerator(II)Landroid/media/ToneGenerator;
    .locals 1

    .line 32
    new-instance v0, Landroid/media/ToneGenerator;

    invoke-direct {v0, p1, p2}, Landroid/media/ToneGenerator;-><init>(II)V

    return-object v0
.end method
