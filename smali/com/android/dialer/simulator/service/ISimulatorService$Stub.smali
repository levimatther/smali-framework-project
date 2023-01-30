.class public abstract Lcom/android/dialer/simulator/service/ISimulatorService$Stub;
.super Landroid/os/Binder;
.source "ISimulatorService.java"

# interfaces
.implements Lcom/android/dialer/simulator/service/ISimulatorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/simulator/service/ISimulatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/simulator/service/ISimulatorService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.dialer.simulator.service.ISimulatorService"

.field static final TRANSACTION_cleanDataBase:I = 0x7

.field static final TRANSACTION_disableSimulatorMode:I = 0x9

.field static final TRANSACTION_enableSimulatorMode:I = 0x8

.field static final TRANSACTION_makeIncomingCall:I = 0x1

.field static final TRANSACTION_makeIncomingEnrichedCall:I = 0x3

.field static final TRANSACTION_makeOutgoingCall:I = 0x2

.field static final TRANSACTION_makeOutgoingEnrichedCall:I = 0x4

.field static final TRANSACTION_populateDataBase:I = 0x6

.field static final TRANSACTION_populateMissedCall:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.dialer.simulator.service.ISimulatorService"

    .line 83
    invoke-virtual {p0, p0, v0}, Lcom/android/dialer/simulator/service/ISimulatorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/dialer/simulator/service/ISimulatorService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.dialer.simulator.service.ISimulatorService"

    .line 94
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    instance-of v1, v0, Lcom/android/dialer/simulator/service/ISimulatorService;

    if-eqz v1, :cond_1

    .line 96
    check-cast v0, Lcom/android/dialer/simulator/service/ISimulatorService;

    return-object v0

    .line 98
    :cond_1
    new-instance v0, Lcom/android/dialer/simulator/service/ISimulatorService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/dialer/simulator/service/ISimulatorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/android/dialer/simulator/service/ISimulatorService;
    .locals 1

    .line 426
    sget-object v0, Lcom/android/dialer/simulator/service/ISimulatorService$Stub$Proxy;->sDefaultImpl:Lcom/android/dialer/simulator/service/ISimulatorService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/dialer/simulator/service/ISimulatorService;)Z
    .locals 1

    .line 419
    sget-object v0, Lcom/android/dialer/simulator/service/ISimulatorService$Stub$Proxy;->sDefaultImpl:Lcom/android/dialer/simulator/service/ISimulatorService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 420
    sput-object p0, Lcom/android/dialer/simulator/service/ISimulatorService$Stub$Proxy;->sDefaultImpl:Lcom/android/dialer/simulator/service/ISimulatorService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.android.dialer.simulator.service.ISimulatorService"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 182
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/dialer/simulator/service/ISimulatorService$Stub;->disableSimulatorMode()V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 175
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/dialer/simulator/service/ISimulatorService$Stub;->enableSimulatorMode()V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 168
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/dialer/simulator/service/ISimulatorService$Stub;->cleanDataBase()V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 161
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/dialer/simulator/service/ISimulatorService$Stub;->populateDataBase()V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 152
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/dialer/simulator/service/ISimulatorService$Stub;->populateMissedCall(I)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 145
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/dialer/simulator/service/ISimulatorService$Stub;->makeOutgoingEnrichedCall()V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 138
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/dialer/simulator/service/ISimulatorService$Stub;->makeIncomingEnrichedCall()V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 127
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/simulator/service/ISimulatorService$Stub;->makeOutgoingCall(Ljava/lang/String;I)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 116
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/simulator/service/ISimulatorService$Stub;->makeIncomingCall(Ljava/lang/String;I)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 111
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
