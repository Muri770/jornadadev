FUNCTION FatorialN(nN)

    LOCAL nResultado
    LOCAL nCont

    nResultado := 1

    FOR nCont := 1 TO nN

        nResultado := nResultado * nCont
   
    NEXT

RETURN nResultado


FUNCTION EhPrimo(nN)

    LOCAL lPrimo
    LOCAL nCont

    lPrimo := .T.

    IF nN <= 1

        lPrimo := .F.

    ELSE

        FOR nCont := 2 TO nN - 1

            IF nN % nCont == 0

                lPrimo := .F.

            ENDIF

        NEXT

    ENDIF

RETURN lPrimo


FUNCTION MMC(nA, nB)

    LOCAL nMaior
    LOCAL nMMC

    nMaior := MAX(nA, nB)

    nMMC := nMaior

        DO WHILE nMMC % nA != 0 .OR. nMMC % nB != 0

        nMMC := nMMC + 1

    ENDDO

RETURN nMMC


FUNCTION MDC(nA, nB)

    LOCAL nMDC
    LOCAL nCont

    nMDC := MIN(nA, nB)

        DO WHILE nA % nMDC != 0 .OR. nB % nMDC != 0

        nMDC := nMDC - 1

    ENDDO

RETURN nMDC