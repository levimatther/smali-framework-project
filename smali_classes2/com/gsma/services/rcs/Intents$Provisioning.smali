.class public Lcom/gsma/services/rcs/Intents$Provisioning;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provisioning"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/Intents$Provisioning$Type;
    }
.end annotation


# static fields
.field public static final ACK:I = 0x2

.field public static final ACTION_PROVISIONING_END_USER_CONDITION:Ljava/lang/String; = "com.tct.cs.rcs.action.ACTION_PROVISIONING_END_USER_CONDITION"

.field public static final ACTION_PROVISIONING_USER_MESSAGE:Ljava/lang/String; = "com.tct.cs.rcs.action.ACTION_PROVISIONING_USER_MESSAGE"

.field public static final COMPONENT_CLASS_NAME:Ljava/lang/String; = "com.tct.rcse.transaction.provision.ProvisioningReceiver"

.field public static final KEY_END_USER_ACK:Ljava/lang/String; = "com.tct.cs.rcs.KEY_END_USER_ACK"

.field public static final KEY_END_USER_NOTIFY:Ljava/lang/String; = "com.tct.cs.rcs.KEY_END_USER_NOTIFY"

.field public static final KEY_END_USER_REQUEST:Ljava/lang/String; = "com.tct.cs.rcs.KEY_END_USER_REQUEST"

.field public static final KEY_PROVISIONING_BY_DEFAULT_APPLICATION_CHANGE:Ljava/lang/String; = "key_provisioning_by_default_app_change"

.field public static final KEY_PROVISIONING_BY_RCS_TOGGER:Ljava/lang/String; = "key_provisioning_by_rcs_togger"

.field public static final KEY_TYPE:Ljava/lang/String; = "com.tct.cs.rcs.KEY_TYPE"

.field public static final MMS_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field public static final NONE:I = 0x0

.field public static final NOTIFY:I = 0x4

.field public static final REQUEAT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
