.class public final synthetic Lcom/android/dialer/enrichedcall/stub/-$$Lambda$StubEnrichedCallModule$wrr8NfG-RhVMWOxc7hQlZBxKXT8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/dialer/enrichedcall/RcsVideoShareFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/dialer/enrichedcall/stub/-$$Lambda$StubEnrichedCallModule$wrr8NfG-RhVMWOxc7hQlZBxKXT8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/dialer/enrichedcall/stub/-$$Lambda$StubEnrichedCallModule$wrr8NfG-RhVMWOxc7hQlZBxKXT8;

    invoke-direct {v0}, Lcom/android/dialer/enrichedcall/stub/-$$Lambda$StubEnrichedCallModule$wrr8NfG-RhVMWOxc7hQlZBxKXT8;-><init>()V

    sput-object v0, Lcom/android/dialer/enrichedcall/stub/-$$Lambda$StubEnrichedCallModule$wrr8NfG-RhVMWOxc7hQlZBxKXT8;->INSTANCE:Lcom/android/dialer/enrichedcall/stub/-$$Lambda$StubEnrichedCallModule$wrr8NfG-RhVMWOxc7hQlZBxKXT8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newRcsVideoShare(Lcom/android/dialer/enrichedcall/EnrichedCallManager;Lcom/android/incallui/videotech/VideoTech$VideoTechListener;Ljava/lang/String;)Lcom/android/incallui/videotech/VideoTech;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/dialer/enrichedcall/stub/StubEnrichedCallModule;->lambda$providesRcsVideoShareFactory$0(Lcom/android/dialer/enrichedcall/EnrichedCallManager;Lcom/android/incallui/videotech/VideoTech$VideoTechListener;Ljava/lang/String;)Lcom/android/incallui/videotech/VideoTech;

    move-result-object p1

    return-object p1
.end method
