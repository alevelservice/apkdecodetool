.class public final synthetic Lio/flutter/plugins/firebase/messaging/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lio/flutter/plugins/firebase/messaging/o;

.field private final synthetic f:Landroid/os/Handler;

.field private final synthetic g:Lio/flutter/embedding/engine/d;

.field private final synthetic h:J


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/firebase/messaging/o;Landroid/os/Handler;Lio/flutter/embedding/engine/d;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/a;->e:Lio/flutter/plugins/firebase/messaging/o;

    iput-object p2, p0, Lio/flutter/plugins/firebase/messaging/a;->f:Landroid/os/Handler;

    iput-object p3, p0, Lio/flutter/plugins/firebase/messaging/a;->g:Lio/flutter/embedding/engine/d;

    iput-wide p4, p0, Lio/flutter/plugins/firebase/messaging/a;->h:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/a;->e:Lio/flutter/plugins/firebase/messaging/o;

    iget-object v1, p0, Lio/flutter/plugins/firebase/messaging/a;->f:Landroid/os/Handler;

    iget-object v2, p0, Lio/flutter/plugins/firebase/messaging/a;->g:Lio/flutter/embedding/engine/d;

    iget-wide v3, p0, Lio/flutter/plugins/firebase/messaging/a;->h:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/flutter/plugins/firebase/messaging/o;->a(Landroid/os/Handler;Lio/flutter/embedding/engine/d;J)V

    return-void
.end method
