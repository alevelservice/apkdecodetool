.class public final synthetic Lio/flutter/plugins/d/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic e:Lio/flutter/plugins/d/h;

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/d/h;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/d/c;->e:Lio/flutter/plugins/d/h;

    iput-object p2, p0, Lio/flutter/plugins/d/c;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/flutter/plugins/d/c;->e:Lio/flutter/plugins/d/h;

    iget-object v1, p0, Lio/flutter/plugins/d/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/flutter/plugins/d/h;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
