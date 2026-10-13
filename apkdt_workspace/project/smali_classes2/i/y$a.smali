.class Li/y$a;
.super Lj/a;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/y;-><init>(Li/w;Li/z;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Li/y;


# direct methods
.method constructor <init>(Li/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/y$a;->k:Li/y;

    invoke-direct {p0}, Lj/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected i()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/y$a;->k:Li/y;

    invoke-virtual {v0}, Li/y;->cancel()V

    return-void
.end method
