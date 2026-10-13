.class Lio/flutter/plugin/editing/c$c;
.super Ljava/lang/Object;
.source "TextInputPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/editing/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/editing/c$c$a;
    }
.end annotation


# instance fields
.field a:Lio/flutter/plugin/editing/c$c$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field b:I


# direct methods
.method public constructor <init>(Lio/flutter/plugin/editing/c$c$a;I)V
    .locals 0
    .param p1    # Lio/flutter/plugin/editing/c$c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/flutter/plugin/editing/c$c;->a:Lio/flutter/plugin/editing/c$c$a;

    .line 3
    iput p2, p0, Lio/flutter/plugin/editing/c$c;->b:I

    return-void
.end method
