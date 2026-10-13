.class public final synthetic Lio/flutter/plugins/firebase/core/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic e:Lio/flutter/plugins/firebase/core/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/flutter/plugins/firebase/core/i;

    invoke-direct {v0}, Lio/flutter/plugins/firebase/core/i;-><init>()V

    sput-object v0, Lio/flutter/plugins/firebase/core/i;->e:Lio/flutter/plugins/firebase/core/i;

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

    invoke-static {}, Lio/flutter/plugins/firebase/core/FlutterFirebasePluginRegistry;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
