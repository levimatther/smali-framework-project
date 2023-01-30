.class public Ltct/gpdatahub/sdk/TctDataHubConstants;
.super Ljava/lang/Object;
.source "TctDataHubConstants.java"


# static fields
.field public static final TYPE_RECORD_BY_DATE:Ltct/gpdatahub/sdk/TctDataHubEventType;

.field public static final TYPE_RECORD_BY_TIME:Ltct/gpdatahub/sdk/TctDataHubEventType;

.field public static final TYPE_SELECT_CONTENT_FOR_FIREBASE:Ltct/gpdatahub/sdk/TctDataHubEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubEventType;->TYPE_RECORD_BY_DATE:Ltct/gpdatahub/sdk/TctDataHubEventType;

    sput-object v0, Ltct/gpdatahub/sdk/TctDataHubConstants;->TYPE_RECORD_BY_DATE:Ltct/gpdatahub/sdk/TctDataHubEventType;

    .line 18
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubEventType;->TYPE_RECORD_BY_TIME:Ltct/gpdatahub/sdk/TctDataHubEventType;

    sput-object v0, Ltct/gpdatahub/sdk/TctDataHubConstants;->TYPE_RECORD_BY_TIME:Ltct/gpdatahub/sdk/TctDataHubEventType;

    .line 23
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubEventType;->TYPE_SELECT_CONTENT_FOR_FIREBASE:Ltct/gpdatahub/sdk/TctDataHubEventType;

    sput-object v0, Ltct/gpdatahub/sdk/TctDataHubConstants;->TYPE_SELECT_CONTENT_FOR_FIREBASE:Ltct/gpdatahub/sdk/TctDataHubEventType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
