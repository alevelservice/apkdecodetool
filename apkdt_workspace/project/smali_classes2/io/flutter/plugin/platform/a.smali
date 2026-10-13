.class public final synthetic Lio/flutter/plugin/platform/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final synthetic e:Lio/flutter/plugin/platform/k$a;

.field private final synthetic f:Lio/flutter/embedding/engine/i/i$b;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/platform/k$a;Lio/flutter/embedding/engine/i/i$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/a;->e:Lio/flutter/plugin/platform/k$a;

    iput-object p2, p0, Lio/flutter/plugin/platform/a;->f:Lio/flutter/embedding/engine/i/i$b;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/platform/a;->e:Lio/flutter/plugin/platform/k$a;

    iget-object v1, p0, Lio/flutter/plugin/platform/a;->f:Lio/flutter/embedding/engine/i/i$b;

    invoke-virtual {v0, v1, p1, p2}, Lio/flutter/plugin/platform/k$a;->a(Lio/flutter/embedding/engine/i/i$b;Landroid/view/View;Z)V

    return-void
.end method
