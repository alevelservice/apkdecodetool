.class final Lg/c/a/i/b$g;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/a/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation


# static fields
.field static final a:Lg/c/a/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/c/a/f/g/l;

    invoke-direct {v0}, Lg/c/a/f/g/l;-><init>()V

    sput-object v0, Lg/c/a/i/b$g;->a:Lg/c/a/b/g;

    return-void
.end method
