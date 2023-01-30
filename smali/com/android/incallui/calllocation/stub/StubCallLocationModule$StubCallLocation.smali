.class Lcom/android/incallui/calllocation/stub/StubCallLocationModule$StubCallLocation;
.super Ljava/lang/Object;
.source "StubCallLocationModule.java"

# interfaces
.implements Lcom/android/incallui/calllocation/CallLocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/calllocation/stub/StubCallLocationModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StubCallLocation"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canGetLocation(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public getLocationFragment(Landroid/content/Context;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 47
    invoke-static {}, Lcom/android/dialer/common/Assert;->createUnsupportedOperationFailException()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method
