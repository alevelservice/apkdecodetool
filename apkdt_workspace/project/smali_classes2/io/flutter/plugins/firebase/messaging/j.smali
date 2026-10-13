.class public final synthetic Lio/flutter/plugins/firebase/messaging/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic e:Lio/flutter/plugins/firebase/messaging/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/flutter/plugins/firebase/messaging/j;

    invoke-direct {v0}, Lio/flutter/plugins/firebase/messaging/j;-><init>()V

    sput-object v0, Lio/flutter/plugins/firebase/messaging/j;->e:Lio/flutter/plugins/firebase/messaging/j;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
