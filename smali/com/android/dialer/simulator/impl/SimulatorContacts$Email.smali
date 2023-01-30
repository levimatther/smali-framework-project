.class Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;
.super Ljava/lang/Object;
.source "SimulatorContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/simulator/impl/SimulatorContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Email"
.end annotation


# instance fields
.field public final label:Ljava/lang/String;

.field public final type:I

.field public final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;->value:Ljava/lang/String;

    const/4 p1, 0x2

    .line 313
    iput p1, p0, Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;->type:I

    const-string p1, "simulator email"

    .line 314
    iput-object p1, p0, Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;->label:Ljava/lang/String;

    return-void
.end method
