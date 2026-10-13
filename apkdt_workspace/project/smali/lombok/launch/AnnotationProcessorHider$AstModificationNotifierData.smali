.class public Llombok/launch/AnnotationProcessorHider$AstModificationNotifierData;
.super Ljava/lang/Object;
.source "AnnotationProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llombok/launch/AnnotationProcessorHider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AstModificationNotifierData"
.end annotation


# static fields
.field public static volatile lombokInvoked:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
