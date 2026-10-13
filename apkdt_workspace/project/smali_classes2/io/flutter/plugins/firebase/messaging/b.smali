.class public final synthetic Lio/flutter/plugins/firebase/messaging/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lio/flutter/plugins/firebase/messaging/o;

.field private final synthetic f:Lio/flutter/embedding/engine/d;

.field private final synthetic g:J


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/firebase/messaging/o;Lio/flutter/embedding/engine/d;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/b;->e:Lio/flutter/plugins/firebase/messaging/o;

    iput-object p2, p0, Lio/flutter/plugins/firebase/messaging/b;->f:Lio/flutter/embedding/engine/d;

    iput-wide p3, p0, Lio/flutter/plugins/firebase/messaging/b;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/b;->e:Lio/flutter/plugins/firebase/messaging/o;

    iget-object v1, p0, Lio/flutter/plugins/firebase/messaging/b;->f:Lio/flutter/embedding/engine/d;

    iget-wide v2, p0, Lio/flutter/plugins/firebase/messaging/b;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lio/flutter/plugins/firebase/messaging/o;->a(Lio/flutter/embedding/engine/d;J)V

    return-void
.end method
