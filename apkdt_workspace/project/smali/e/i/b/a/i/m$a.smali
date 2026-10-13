.class public abstract Le/i/b/a/i/m$a;
.super Ljava/lang/Object;
.source "TransportContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/a/i/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Le/i/b/a/d;)Le/i/b/a/i/m$a;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->LIBRARY:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)Le/i/b/a/i/m$a;
.end method

.method public abstract a([B)Le/i/b/a/i/m$a;
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract a()Le/i/b/a/i/m;
.end method
